-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2022 at 03:11 PM
-- Server version: 5.7.13-log
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warung_pedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1647010885);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/default/*', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/default/index', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/menu/*', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/menu/create', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/menu/index', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/menu/update', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/menu/view', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/permission/*', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/permission/create', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/permission/get-users', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/permission/index', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/permission/update', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/permission/view', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/role/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/role/assign', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/role/create', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/role/delete', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/role/get-users', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/role/index', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/role/remove', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/role/update', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/role/view', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/admin/route/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/route/assign', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/route/create', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/route/index', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/route/remove', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/rule/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/rule/create', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/rule/index', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/rule/update', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/rule/view', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/user/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/user/activate', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/user/delete', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/user/index', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/user/login', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/user/logout', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/user/signup', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/admin/user/view', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/cart/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/cart/create', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/cart/delete', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/cart/index', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/cart/update', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/cart/view', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/category/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/category/create', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/category/delete', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/category/index', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/category/update', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/category/view', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/debug/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/debug/default/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/debug/default/index', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/debug/default/view', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/debug/user/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/gii/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/gii/default/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/gii/default/action', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/gii/default/diff', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/gii/default/index', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/gii/default/preview', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/gii/default/view', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/item/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/item/create', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/item/delete', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/item/index', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/item/update', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/item/view', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/site/*', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/site/about', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/site/captcha', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/site/contact', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/site/error', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/site/index', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/site/login', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/site/logout', 2, NULL, NULL, NULL, 1647010522, 1647010522),
('/user/*', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/admin/*', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/admin/assignments', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/admin/block', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/admin/confirm', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/admin/create', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/admin/delete', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/admin/index', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/admin/info', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/admin/resend-password', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/admin/switch', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/admin/update', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/admin/update-profile', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/profile/*', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/profile/index', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/profile/show', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/recovery/*', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/recovery/request', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/recovery/reset', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/registration/*', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/registration/confirm', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/registration/connect', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/registration/register', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/registration/resend', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/security/*', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/security/auth', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/security/login', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/security/logout', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/settings/*', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/settings/account', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/settings/confirm', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/settings/delete', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/settings/disconnect', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/settings/networks', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('/user/settings/profile', 2, NULL, NULL, NULL, 1647010521, 1647010521),
('admin', 1, NULL, NULL, NULL, 1647010694, 1647010694);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', '/*'),
('admin', '/admin/*'),
('admin', '/admin/assignment/*'),
('admin', '/admin/assignment/assign'),
('admin', '/admin/assignment/index'),
('admin', '/admin/assignment/revoke'),
('admin', '/admin/assignment/view'),
('admin', '/admin/default/*'),
('admin', '/admin/default/index'),
('admin', '/admin/menu/*'),
('admin', '/admin/menu/create'),
('admin', '/admin/menu/delete'),
('admin', '/admin/menu/index'),
('admin', '/admin/menu/update'),
('admin', '/admin/menu/view'),
('admin', '/admin/permission/*'),
('admin', '/admin/permission/assign'),
('admin', '/admin/permission/create'),
('admin', '/admin/permission/delete'),
('admin', '/admin/permission/get-users'),
('admin', '/admin/permission/index'),
('admin', '/admin/permission/remove'),
('admin', '/admin/permission/update'),
('admin', '/admin/permission/view'),
('admin', '/admin/role/*'),
('admin', '/admin/role/assign'),
('admin', '/admin/role/create'),
('admin', '/admin/role/delete'),
('admin', '/admin/role/get-users'),
('admin', '/admin/role/index'),
('admin', '/admin/role/remove'),
('admin', '/admin/role/update'),
('admin', '/admin/role/view'),
('admin', '/admin/route/*'),
('admin', '/admin/route/assign'),
('admin', '/admin/route/create'),
('admin', '/admin/route/index'),
('admin', '/admin/route/refresh'),
('admin', '/admin/route/remove'),
('admin', '/admin/rule/*'),
('admin', '/admin/rule/create'),
('admin', '/admin/rule/delete'),
('admin', '/admin/rule/index'),
('admin', '/admin/rule/update'),
('admin', '/admin/rule/view'),
('admin', '/admin/user/*'),
('admin', '/admin/user/activate'),
('admin', '/admin/user/change-password'),
('admin', '/admin/user/delete'),
('admin', '/admin/user/index'),
('admin', '/admin/user/login'),
('admin', '/admin/user/logout'),
('admin', '/admin/user/request-password-reset'),
('admin', '/admin/user/reset-password'),
('admin', '/admin/user/signup'),
('admin', '/admin/user/view'),
('admin', '/cart/*'),
('admin', '/cart/create'),
('admin', '/cart/delete'),
('admin', '/cart/index'),
('admin', '/cart/update'),
('admin', '/cart/view'),
('admin', '/category/*'),
('admin', '/category/create'),
('admin', '/category/delete'),
('admin', '/category/index'),
('admin', '/category/update'),
('admin', '/category/view'),
('admin', '/debug/*'),
('admin', '/debug/default/*'),
('admin', '/debug/default/db-explain'),
('admin', '/debug/default/download-mail'),
('admin', '/debug/default/index'),
('admin', '/debug/default/toolbar'),
('admin', '/debug/default/view'),
('admin', '/debug/user/*'),
('admin', '/debug/user/reset-identity'),
('admin', '/debug/user/set-identity'),
('admin', '/gii/*'),
('admin', '/gii/default/*'),
('admin', '/gii/default/action'),
('admin', '/gii/default/diff'),
('admin', '/gii/default/index'),
('admin', '/gii/default/preview'),
('admin', '/gii/default/view'),
('admin', '/item/*'),
('admin', '/item/create'),
('admin', '/item/delete'),
('admin', '/item/index'),
('admin', '/item/update'),
('admin', '/item/view'),
('admin', '/site/*'),
('admin', '/site/about'),
('admin', '/site/captcha'),
('admin', '/site/contact'),
('admin', '/site/error'),
('admin', '/site/index'),
('admin', '/site/login'),
('admin', '/site/logout'),
('admin', '/user/*'),
('admin', '/user/admin/*'),
('admin', '/user/admin/assignments'),
('admin', '/user/admin/block'),
('admin', '/user/admin/confirm'),
('admin', '/user/admin/create'),
('admin', '/user/admin/delete'),
('admin', '/user/admin/index'),
('admin', '/user/admin/info'),
('admin', '/user/admin/resend-password'),
('admin', '/user/admin/switch'),
('admin', '/user/admin/update'),
('admin', '/user/admin/update-profile'),
('admin', '/user/profile/*'),
('admin', '/user/profile/index'),
('admin', '/user/profile/show'),
('admin', '/user/recovery/*'),
('admin', '/user/recovery/request'),
('admin', '/user/recovery/reset'),
('admin', '/user/registration/*'),
('admin', '/user/registration/confirm'),
('admin', '/user/registration/connect'),
('admin', '/user/registration/register'),
('admin', '/user/registration/resend'),
('admin', '/user/security/*'),
('admin', '/user/security/auth'),
('admin', '/user/security/login'),
('admin', '/user/security/logout'),
('admin', '/user/settings/*'),
('admin', '/user/settings/account'),
('admin', '/user/settings/confirm'),
('admin', '/user/settings/delete'),
('admin', '/user/settings/disconnect'),
('admin', '/user/settings/networks'),
('admin', '/user/settings/profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Electronic', NULL, NULL, NULL, NULL),
(2, 'Otomotif', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `picture` varchar(500) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `category_id`, `name`, `price`, `stock`, `description`, `picture`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 2, 'Ban Motor 130/70-17', '100000', 5, 'test gan', 'test', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1, 'Item', NULL, '/item/index', 0, NULL),
(2, 'Category', NULL, '/category/index', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1647006636),
('m140209_132017_init', 1647006640),
('m140403_174025_create_account_table', 1647006640),
('m140504_113157_update_tables', 1647006641),
('m140504_130429_create_token_table', 1647006641),
('m140506_102106_rbac_init', 1647009171),
('m140602_111327_create_menu_table', 1647008989),
('m140830_171933_fix_ip_field', 1647006642),
('m140830_172703_change_account_table_name', 1647006642),
('m141222_110026_update_ip_field', 1647006642),
('m141222_135246_alter_username_length', 1647006642),
('m150614_103145_update_social_account_table', 1647006642),
('m150623_212711_fix_username_notnull', 1647006642),
('m151218_234654_add_timezone_to_profile', 1647006642),
('m160312_050000_create_user', 1647008989),
('m160929_103127_add_last_login_at_to_user_table', 1647006643),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1647009171),
('m180523_151638_rbac_updates_indexes_without_prefix', 1647009172),
('m200409_110543_rbac_update_mssql_trigger', 1647009172);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`) VALUES
(1, 'admin', 'admin@yahoo.com', '$2y$10$pb9IG5/DJpvdgszqDxcnguwvWnnDqrzsxUSRNza71hjLiweW.jodi', 'jJDfbICBB0E-g_bO2BUUR6p2u_Sj9SCC', 2019, NULL, NULL, '::1', 1575532706, 1575605017, 0, 1647009093);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`category_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
