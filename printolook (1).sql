-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 03:26 PM
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
-- Database: `printolook`
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add banner', 7, 'add_banner'),
(26, 'Can change banner', 7, 'change_banner'),
(27, 'Can delete banner', 7, 'delete_banner'),
(28, 'Can view banner', 7, 'view_banner'),
(29, 'Can add blog category', 8, 'add_blogcategory'),
(30, 'Can change blog category', 8, 'change_blogcategory'),
(31, 'Can delete blog category', 8, 'delete_blogcategory'),
(32, 'Can view blog category', 8, 'view_blogcategory'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category'),
(37, 'Can add gsm type', 10, 'add_gsmtype'),
(38, 'Can change gsm type', 10, 'change_gsmtype'),
(39, 'Can delete gsm type', 10, 'delete_gsmtype'),
(40, 'Can view gsm type', 10, 'view_gsmtype'),
(41, 'Can add gstglobal', 11, 'add_gstglobal'),
(42, 'Can change gstglobal', 11, 'change_gstglobal'),
(43, 'Can delete gstglobal', 11, 'delete_gstglobal'),
(44, 'Can view gstglobal', 11, 'view_gstglobal'),
(45, 'Can add product volume type', 12, 'add_productvolumetype'),
(46, 'Can change product volume type', 12, 'change_productvolumetype'),
(47, 'Can delete product volume type', 12, 'delete_productvolumetype'),
(48, 'Can view product volume type', 12, 'view_productvolumetype'),
(49, 'Can add shiping category', 13, 'add_shipingcategory'),
(50, 'Can change shiping category', 13, 'change_shipingcategory'),
(51, 'Can delete shiping category', 13, 'delete_shipingcategory'),
(52, 'Can view shiping category', 13, 'view_shipingcategory'),
(53, 'Can add sizes', 14, 'add_sizes'),
(54, 'Can change sizes', 14, 'change_sizes'),
(55, 'Can delete sizes', 14, 'delete_sizes'),
(56, 'Can view sizes', 14, 'view_sizes'),
(57, 'Can add sub category', 15, 'add_subcategory'),
(58, 'Can change sub category', 15, 'change_subcategory'),
(59, 'Can delete sub category', 15, 'delete_subcategory'),
(60, 'Can view sub category', 15, 'view_subcategory'),
(61, 'Can add testonomial', 16, 'add_testonomial'),
(62, 'Can change testonomial', 16, 'change_testonomial'),
(63, 'Can delete testonomial', 16, 'delete_testonomial'),
(64, 'Can view testonomial', 16, 'view_testonomial'),
(65, 'Can add variable image', 17, 'add_variableimage'),
(66, 'Can change variable image', 17, 'change_variableimage'),
(67, 'Can delete variable image', 17, 'delete_variableimage'),
(68, 'Can view variable image', 17, 'view_variableimage'),
(69, 'Can add variable product', 18, 'add_variableproduct'),
(70, 'Can change variable product', 18, 'change_variableproduct'),
(71, 'Can delete variable product', 18, 'delete_variableproduct'),
(72, 'Can view variable product', 18, 'view_variableproduct'),
(73, 'Can add admin', 19, 'add_admin'),
(74, 'Can change admin', 19, 'change_admin'),
(75, 'Can delete admin', 19, 'delete_admin'),
(76, 'Can view admin', 19, 'view_admin'),
(77, 'Can add customer', 20, 'add_customer'),
(78, 'Can change customer', 20, 'change_customer'),
(79, 'Can delete customer', 20, 'delete_customer'),
(80, 'Can view customer', 20, 'view_customer'),
(81, 'Can add manager', 21, 'add_manager'),
(82, 'Can change manager', 21, 'change_manager'),
(83, 'Can delete manager', 21, 'delete_manager'),
(84, 'Can view manager', 21, 'view_manager'),
(85, 'Can add operation', 22, 'add_operation'),
(86, 'Can change operation', 22, 'change_operation'),
(87, 'Can delete operation', 22, 'delete_operation'),
(88, 'Can view operation', 22, 'view_operation'),
(89, 'Can add signup', 23, 'add_signup'),
(90, 'Can change signup', 23, 'change_signup'),
(91, 'Can delete signup', 23, 'delete_signup'),
(92, 'Can view signup', 23, 'view_signup'),
(93, 'Can add variable product attributes', 24, 'add_variableproductattributes'),
(94, 'Can change variable product attributes', 24, 'change_variableproductattributes'),
(95, 'Can delete variable product attributes', 24, 'delete_variableproductattributes'),
(96, 'Can view variable product attributes', 24, 'view_variableproductattributes'),
(97, 'Can add vargrp', 25, 'add_vargrp'),
(98, 'Can change vargrp', 25, 'change_vargrp'),
(99, 'Can delete vargrp', 25, 'delete_vargrp'),
(100, 'Can view vargrp', 25, 'view_vargrp'),
(101, 'Can add trending product', 26, 'add_trendingproduct'),
(102, 'Can change trending product', 26, 'change_trendingproduct'),
(103, 'Can delete trending product', 26, 'delete_trendingproduct'),
(104, 'Can view trending product', 26, 'view_trendingproduct'),
(105, 'Can add simple product', 27, 'add_simpleproduct'),
(106, 'Can change simple product', 27, 'change_simpleproduct'),
(107, 'Can delete simple product', 27, 'delete_simpleproduct'),
(108, 'Can view simple product', 27, 'view_simpleproduct'),
(109, 'Can add simple image', 28, 'add_simpleimage'),
(110, 'Can change simple image', 28, 'change_simpleimage'),
(111, 'Can delete simple image', 28, 'delete_simpleimage'),
(112, 'Can view simple image', 28, 'view_simpleimage'),
(113, 'Can add simple attribute', 29, 'add_simpleattribute'),
(114, 'Can change simple attribute', 29, 'change_simpleattribute'),
(115, 'Can delete simple attribute', 29, 'delete_simpleattribute'),
(116, 'Can view simple attribute', 29, 'view_simpleattribute'),
(117, 'Can add simpgrp', 30, 'add_simpgrp'),
(118, 'Can change simpgrp', 30, 'change_simpgrp'),
(119, 'Can delete simpgrp', 30, 'delete_simpgrp'),
(120, 'Can view simpgrp', 30, 'view_simpgrp'),
(121, 'Can add shopbycategory', 31, 'add_shopbycategory'),
(122, 'Can change shopbycategory', 31, 'change_shopbycategory'),
(123, 'Can delete shopbycategory', 31, 'delete_shopbycategory'),
(124, 'Can view shopbycategory', 31, 'view_shopbycategory'),
(125, 'Can add shiping', 32, 'add_shiping'),
(126, 'Can change shiping', 32, 'change_shiping'),
(127, 'Can delete shiping', 32, 'delete_shiping'),
(128, 'Can view shiping', 32, 'view_shiping'),
(129, 'Can add product type', 33, 'add_producttype'),
(130, 'Can change product type', 33, 'change_producttype'),
(131, 'Can delete product type', 33, 'delete_producttype'),
(132, 'Can view product type', 33, 'view_producttype'),
(133, 'Can add product size', 34, 'add_productsize'),
(134, 'Can change product size', 34, 'change_productsize'),
(135, 'Can delete product size', 34, 'delete_productsize'),
(136, 'Can view product size', 34, 'view_productsize'),
(137, 'Can add productquantity', 35, 'add_productquantity'),
(138, 'Can change productquantity', 35, 'change_productquantity'),
(139, 'Can delete productquantity', 35, 'delete_productquantity'),
(140, 'Can view productquantity', 35, 'view_productquantity'),
(141, 'Can add product image', 36, 'add_productimage'),
(142, 'Can change product image', 36, 'change_productimage'),
(143, 'Can delete product image', 36, 'delete_productimage'),
(144, 'Can view product image', 36, 'view_productimage'),
(145, 'Can add product color', 37, 'add_productcolor'),
(146, 'Can change product color', 37, 'change_productcolor'),
(147, 'Can delete product color', 37, 'delete_productcolor'),
(148, 'Can view product color', 37, 'view_productcolor'),
(149, 'Can add newlaunches', 38, 'add_newlaunches'),
(150, 'Can change newlaunches', 38, 'change_newlaunches'),
(151, 'Can delete newlaunches', 38, 'delete_newlaunches'),
(152, 'Can view newlaunches', 38, 'view_newlaunches'),
(153, 'Can add grouped product', 39, 'add_groupedproduct'),
(154, 'Can change grouped product', 39, 'change_groupedproduct'),
(155, 'Can delete grouped product', 39, 'delete_groupedproduct'),
(156, 'Can view grouped product', 39, 'view_groupedproduct'),
(157, 'Can add cupon', 40, 'add_cupon'),
(158, 'Can change cupon', 40, 'change_cupon'),
(159, 'Can delete cupon', 40, 'delete_cupon'),
(160, 'Can view cupon', 40, 'view_cupon'),
(161, 'Can add blog', 41, 'add_blog'),
(162, 'Can change blog', 41, 'change_blog'),
(163, 'Can delete blog', 41, 'delete_blog'),
(164, 'Can view blog', 41, 'view_blog'),
(165, 'Can add best_ sellers', 42, 'add_best_sellers'),
(166, 'Can change best_ sellers', 42, 'change_best_sellers'),
(167, 'Can delete best_ sellers', 42, 'delete_best_sellers'),
(168, 'Can view best_ sellers', 42, 'view_best_sellers'),
(169, 'Can add cart', 43, 'add_cart'),
(170, 'Can change cart', 43, 'change_cart'),
(171, 'Can delete cart', 43, 'delete_cart'),
(172, 'Can view cart', 43, 'view_cart'),
(173, 'Can add guest', 44, 'add_guest'),
(174, 'Can change guest', 44, 'change_guest'),
(175, 'Can delete guest', 44, 'delete_guest'),
(176, 'Can view guest', 44, 'view_guest'),
(177, 'Can add order', 45, 'add_order'),
(178, 'Can change order', 45, 'change_order'),
(179, 'Can delete order', 45, 'delete_order'),
(180, 'Can view order', 45, 'view_order'),
(181, 'Can add ordercart', 46, 'add_ordercart'),
(182, 'Can change ordercart', 46, 'change_ordercart'),
(183, 'Can delete ordercart', 46, 'delete_ordercart'),
(184, 'Can view ordercart', 46, 'view_ordercart'),
(185, 'Can add cartitem', 47, 'add_cartitem'),
(186, 'Can change cartitem', 47, 'change_cartitem'),
(187, 'Can delete cartitem', 47, 'delete_cartitem'),
(188, 'Can view cartitem', 47, 'view_cartitem'),
(189, 'Can add cart file', 48, 'add_cartfile'),
(190, 'Can change cart file', 48, 'change_cartfile'),
(191, 'Can delete cart file', 48, 'delete_cartfile'),
(192, 'Can view cart file', 48, 'view_cartfile'),
(193, 'Can add cart variable', 49, 'add_cartvariable'),
(194, 'Can change cart variable', 49, 'change_cartvariable'),
(195, 'Can delete cart variable', 49, 'delete_cartvariable'),
(196, 'Can view cart variable', 49, 'view_cartvariable'),
(197, 'Can add cartsimple', 50, 'add_cartsimple'),
(198, 'Can change cartsimple', 50, 'change_cartsimple'),
(199, 'Can delete cartsimple', 50, 'delete_cartsimple'),
(200, 'Can view cartsimple', 50, 'view_cartsimple'),
(201, 'Can add cart grouped', 51, 'add_cartgrouped'),
(202, 'Can change cart grouped', 51, 'change_cartgrouped'),
(203, 'Can delete cart grouped', 51, 'delete_cartgrouped'),
(204, 'Can view cart grouped', 51, 'view_cartgrouped'),
(205, 'Can add cart grouped file', 52, 'add_cartgroupedfile'),
(206, 'Can change cart grouped file', 52, 'change_cartgroupedfile'),
(207, 'Can delete cart grouped file', 52, 'delete_cartgroupedfile'),
(208, 'Can view cart grouped file', 52, 'view_cartgroupedfile'),
(209, 'Can add cart simle file', 53, 'add_cartsimlefile'),
(210, 'Can change cart simle file', 53, 'change_cartsimlefile'),
(211, 'Can delete cart simle file', 53, 'delete_cartsimlefile'),
(212, 'Can view cart simle file', 53, 'view_cartsimlefile'),
(213, 'Can add cart variable file', 54, 'add_cartvariablefile'),
(214, 'Can change cart variable file', 54, 'change_cartvariablefile'),
(215, 'Can delete cart variable file', 54, 'delete_cartvariablefile'),
(216, 'Can view cart variable file', 54, 'view_cartvariablefile'),
(217, 'Can add coupon globaladd', 55, 'add_couponglobaladd'),
(218, 'Can change coupon globaladd', 55, 'change_couponglobaladd'),
(219, 'Can delete coupon globaladd', 55, 'delete_couponglobaladd'),
(220, 'Can view coupon globaladd', 55, 'view_couponglobaladd'),
(221, 'Can add shipping express global', 56, 'add_shippingexpressglobal'),
(222, 'Can change shipping express global', 56, 'change_shippingexpressglobal'),
(223, 'Can delete shipping express global', 56, 'delete_shippingexpressglobal'),
(224, 'Can view shipping express global', 56, 'view_shippingexpressglobal'),
(225, 'Can add shipping plus global', 57, 'add_shippingplusglobal'),
(226, 'Can change shipping plus global', 57, 'change_shippingplusglobal'),
(227, 'Can delete shipping plus global', 57, 'delete_shippingplusglobal'),
(228, 'Can view shipping plus global', 57, 'view_shippingplusglobal'),
(229, 'Can add order final', 58, 'add_orderfinal'),
(230, 'Can change order final', 58, 'change_orderfinal'),
(231, 'Can delete order final', 58, 'delete_orderfinal'),
(232, 'Can view order final', 58, 'view_orderfinal'),
(233, 'Can add customer gst', 59, 'add_customergst'),
(234, 'Can change customer gst', 59, 'change_customergst'),
(235, 'Can delete customer gst', 59, 'delete_customergst'),
(236, 'Can view customer gst', 59, 'view_customergst'),
(237, 'Can add order image file', 60, 'add_orderimagefile'),
(238, 'Can change order image file', 60, 'change_orderimagefile'),
(239, 'Can delete order image file', 60, 'delete_orderimagefile'),
(240, 'Can view order image file', 60, 'view_orderimagefile'),
(241, 'Can add different shipping address', 61, 'add_differentshippingaddress'),
(242, 'Can change different shipping address', 61, 'change_differentshippingaddress'),
(243, 'Can delete different shipping address', 61, 'delete_differentshippingaddress'),
(244, 'Can view different shipping address', 61, 'view_differentshippingaddress'),
(245, 'Can add all prodcuts', 62, 'add_allprodcuts'),
(246, 'Can change all prodcuts', 62, 'change_allprodcuts'),
(247, 'Can delete all prodcuts', 62, 'delete_allprodcuts'),
(248, 'Can view all prodcuts', 62, 'view_allprodcuts'),
(249, 'Can add best_ sellers_simple', 63, 'add_best_sellers_simple'),
(250, 'Can change best_ sellers_simple', 63, 'change_best_sellers_simple'),
(251, 'Can delete best_ sellers_simple', 63, 'delete_best_sellers_simple'),
(252, 'Can view best_ sellers_simple', 63, 'view_best_sellers_simple'),
(253, 'Can add best_ sellers_grouped', 64, 'add_best_sellers_grouped'),
(254, 'Can change best_ sellers_grouped', 64, 'change_best_sellers_grouped'),
(255, 'Can delete best_ sellers_grouped', 64, 'delete_best_sellers_grouped'),
(256, 'Can view best_ sellers_grouped', 64, 'view_best_sellers_grouped'),
(257, 'Can add best_ sellers_variable', 65, 'add_best_sellers_variable'),
(258, 'Can change best_ sellers_variable', 65, 'change_best_sellers_variable'),
(259, 'Can delete best_ sellers_variable', 65, 'delete_best_sellers_variable'),
(260, 'Can view best_ sellers_variable', 65, 'view_best_sellers_variable'),
(261, 'Can add best_ offers', 66, 'add_best_offers'),
(262, 'Can change best_ offers', 66, 'change_best_offers'),
(263, 'Can delete best_ offers', 66, 'delete_best_offers'),
(264, 'Can view best_ offers', 66, 'view_best_offers'),
(265, 'Can add newlaunches grouped', 38, 'add_newlaunchesgrouped'),
(266, 'Can change newlaunches grouped', 38, 'change_newlaunchesgrouped'),
(267, 'Can delete newlaunches grouped', 38, 'delete_newlaunchesgrouped'),
(268, 'Can view newlaunches grouped', 38, 'view_newlaunchesgrouped'),
(269, 'Can add newlaunches variable', 67, 'add_newlaunchesvariable'),
(270, 'Can change newlaunches variable', 67, 'change_newlaunchesvariable'),
(271, 'Can delete newlaunches variable', 67, 'delete_newlaunchesvariable'),
(272, 'Can view newlaunches variable', 67, 'view_newlaunchesvariable'),
(273, 'Can add newlaunches simple', 68, 'add_newlaunchessimple'),
(274, 'Can change newlaunches simple', 68, 'change_newlaunchessimple'),
(275, 'Can delete newlaunches simple', 68, 'delete_newlaunchessimple'),
(276, 'Can view newlaunches simple', 68, 'view_newlaunchessimple'),
(277, 'Can add happy clients', 69, 'add_happyclients'),
(278, 'Can change happy clients', 69, 'change_happyclients'),
(279, 'Can delete happy clients', 69, 'delete_happyclients'),
(280, 'Can view happy clients', 69, 'view_happyclients');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_admin`
--

CREATE TABLE `dashboard_admin` (
  `added_date` datetime(6) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_allprodcuts`
--

CREATE TABLE `dashboard_allprodcuts` (
  `id` bigint(20) NOT NULL,
  `grouped_product_id` bigint(20) DEFAULT NULL,
  `simple_product_id` bigint(20) DEFAULT NULL,
  `variable_product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_banner`
--

CREATE TABLE `dashboard_banner` (
  `id` bigint(20) NOT NULL,
  `bannerTitle` varchar(100) DEFAULT NULL,
  `bannerImage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_banner`
--

INSERT INTO `dashboard_banner` (`id`, `bannerTitle`, `bannerImage`) VALUES
(1, 'banner1', 'Product/gift1_5jXq5x8.jpg'),
(2, 'banner2', 'Product/GetCreative-5c0ff4158257d_QvGM6qR.jpg'),
(3, 'banner3', 'Product/photoprints_dHhWzyq.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_best_offers`
--

CREATE TABLE `dashboard_best_offers` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_best_offers`
--

INSERT INTO `dashboard_best_offers` (`id`, `title`, `description`, `image`) VALUES
(1, 'offer1', 'testoffer', 'bestoffer/GetCreative-5c0ff4158257d.jpg'),
(2, 'offer2', 'testoffer2', 'bestoffer/gift1.jpg'),
(3, 'offer3', 'testoffer3', 'bestoffer/photoprints.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_best_sellers_grouped`
--

CREATE TABLE `dashboard_best_sellers_grouped` (
  `id` bigint(20) NOT NULL,
  `group_product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_best_sellers_grouped`
--

INSERT INTO `dashboard_best_sellers_grouped` (`id`, `group_product_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_best_sellers_simple`
--

CREATE TABLE `dashboard_best_sellers_simple` (
  `id` bigint(20) NOT NULL,
  `simple_product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_best_sellers_simple`
--

INSERT INTO `dashboard_best_sellers_simple` (`id`, `simple_product_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_best_sellers_variable`
--

CREATE TABLE `dashboard_best_sellers_variable` (
  `id` bigint(20) NOT NULL,
  `variable_product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_best_sellers_variable`
--

INSERT INTO `dashboard_best_sellers_variable` (`id`, `variable_product_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_blog`
--

CREATE TABLE `dashboard_blog` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_blogcategory`
--

CREATE TABLE `dashboard_blogcategory` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_blogcategory`
--

INSERT INTO `dashboard_blogcategory` (`id`, `title`, `desc`, `name`, `image`, `date`) VALUES
(1, 'Good Products', 'A blog (a truncation of \"weblog\") is a discussion or informational website published on the World Wide Web consisting of discrete, often informal diary-style', 'Deepak Puri', 'Product/Round-Neck_VL88zRK.jpg', '2021-10-21'),
(3, 'Best Services', 'A blog (a truncation of \"weblog\") is a discussion or informational website published on the World Wide Web consisting of discrete, often informal diary-style', 'Krishnkant', 'Product/Polo_T-Shirts_PkdOlAt.jpg', '2021-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_category`
--

CREATE TABLE `dashboard_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL,
  `catDesc` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_category`
--

INSERT INTO `dashboard_category` (`id`, `name`, `image`, `catDesc`) VALUES
(1, 'T-Shirts', 'Product/tshirt_BxPNE3q.jpg', 'A T-shirt, or tee shirt, is a style of fabric shirt named after the T shape of its body and sleeves. Traditionally, it has short sleeves and a round neckline, known as a crew neck,'),
(2, 'Printing', 'Product/letterhaeds_ca0dveH.jpg', 'Printing is a process for mass reproducing text and images using a master form or template. The earliest non-paper products involving printing include ...'),
(3, 'Posters', 'Product/poster_49WC9Wx.jpg', 'A poster is a temporary promotion of an idea, product, or event put up in a public space for mass consumption. Typically, posters include both textual and graphic elements'),
(4, 'Mobile Case', 'Product/mobilecase_eDHRurJ.png', 'Cases, which are designed to attach to, support, or otherwise hold a smartphone, are popular accessories. Case measures are based on the display inches (e.g. 5 inch display). There are different types: Pouches and sleeves.'),
(5, 'Photo Prints', 'Product/photoprints_yQhj2n9.jpg', 'Cases, which are designed to attach to, support, or otherwise hold a smartphone, are popular accessories. Case measures are based on the display inches (e.g. 5 inch display). There are different types: Pouches and sleeves.');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_couponglobaladd`
--

CREATE TABLE `dashboard_couponglobaladd` (
  `id` bigint(20) NOT NULL,
  `coupon_code` varchar(100) DEFAULT NULL,
  `discount_percent` int(11) DEFAULT NULL,
  `coupon_applied_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_couponglobaladd`
--

INSERT INTO `dashboard_couponglobaladd` (`id`, `coupon_code`, `discount_percent`, `coupon_applied_type`) VALUES
(1, 'DeepakG99', 12, NULL),
(2, 'deepak', 20, 'subtotal');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_cupon`
--

CREATE TABLE `dashboard_cupon` (
  `id` bigint(20) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_customer`
--

CREATE TABLE `dashboard_customer` (
  `added_date` datetime(6) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_customer`
--

INSERT INTO `dashboard_customer` (`added_date`, `user_id`, `name`, `email`, `phone`, `password`) VALUES
('2021-10-11 05:57:08.131152', 1, 'Deepak Puri Goswami', 'deepakpuri1555@gmail.com', '9039918690', 'Dpg123@@');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_groupedproduct`
--

CREATE TABLE `dashboard_groupedproduct` (
  `id` bigint(20) NOT NULL,
  `pid1` int(11) DEFAULT NULL,
  `pid2` int(11) DEFAULT NULL,
  `slug` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `final_price` double DEFAULT NULL,
  `volume_type` varchar(30) DEFAULT NULL,
  `packing_charge` int(11) DEFAULT NULL,
  `unit_weight` double DEFAULT NULL,
  `product_margin` double DEFAULT NULL,
  `gst` double DEFAULT NULL,
  `product_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_groupedproduct`
--

INSERT INTO `dashboard_groupedproduct` (`id`, `pid1`, `pid2`, `slug`, `description`, `final_price`, `volume_type`, `packing_charge`, `unit_weight`, `product_margin`, `gst`, `product_type`) VALUES
(1, 23570794, 23570794, 'grouped', 'new combo of letter head and T-Shirt', 450, 'Volumetric', 20, 3, 59, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_gsmtype`
--

CREATE TABLE `dashboard_gsmtype` (
  `id` bigint(20) NOT NULL,
  `title` longtext DEFAULT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_gsmtype`
--

INSERT INTO `dashboard_gsmtype` (`id`, `title`, `category_id`) VALUES
(1, 'Febric', 1),
(2, '100 Bond', 2),
(3, '100 Geo Bond', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_gstglobal`
--

CREATE TABLE `dashboard_gstglobal` (
  `id` bigint(20) NOT NULL,
  `gst` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_gstglobal`
--

INSERT INTO `dashboard_gstglobal` (`id`, `gst`) VALUES
(1, 5),
(2, 12),
(3, 18),
(4, 22);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_happyclients`
--

CREATE TABLE `dashboard_happyclients` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `review` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_happyclients`
--

INSERT INTO `dashboard_happyclients` (`id`, `name`, `review`) VALUES
(1, 'Akshay Kumar', 'A customer review is a review of a product or service made by a customer who has purchased and used, or had experience with, the product or service. Customer reviews are a form of customer feedback on electronic commerce and online shopping sites'),
(2, 'Lady Gaga', 'The reliability of customer reviews has been questioned.'),
(3, 'Alok Nath', ' Customer reviews are a form of customer feedback on electronic commerce and online shopping sites. ... The reliability of customer reviews has been questioned.');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_manager`
--

CREATE TABLE `dashboard_manager` (
  `added_date` datetime(6) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_newlaunchesgrouped`
--

CREATE TABLE `dashboard_newlaunchesgrouped` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_newlaunchesgrouped`
--

INSERT INTO `dashboard_newlaunchesgrouped` (`id`, `product_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_newlaunchessimple`
--

CREATE TABLE `dashboard_newlaunchessimple` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_newlaunchessimple`
--

INSERT INTO `dashboard_newlaunchessimple` (`id`, `product_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_newlaunchesvariable`
--

CREATE TABLE `dashboard_newlaunchesvariable` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_newlaunchesvariable`
--

INSERT INTO `dashboard_newlaunchesvariable` (`id`, `product_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_operation`
--

CREATE TABLE `dashboard_operation` (
  `added_date` datetime(6) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_productcolor`
--

CREATE TABLE `dashboard_productcolor` (
  `id` bigint(20) NOT NULL,
  `color` varchar(25) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_productimage`
--

CREATE TABLE `dashboard_productimage` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_productquantity`
--

CREATE TABLE `dashboard_productquantity` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_productsize`
--

CREATE TABLE `dashboard_productsize` (
  `id` bigint(20) NOT NULL,
  `size` varchar(25) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_producttype`
--

CREATE TABLE `dashboard_producttype` (
  `id` bigint(20) NOT NULL,
  `type` varchar(25) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_productvolumetype`
--

CREATE TABLE `dashboard_productvolumetype` (
  `id` bigint(20) NOT NULL,
  `volumetype` varchar(50) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_productvolumetype`
--

INSERT INTO `dashboard_productvolumetype` (`id`, `volumetype`, `category_id`) VALUES
(1, 'non volumatric', 1),
(2, 'Non-volumatric', 2),
(3, 'Volumatric', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_shiping`
--

CREATE TABLE `dashboard_shiping` (
  `id` bigint(20) NOT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `product_weight_upto250gms` int(11) NOT NULL,
  `product_weight_upto500gms` int(11) NOT NULL,
  `product_weight_add500gm` int(11) NOT NULL,
  `product_weight_serviceRate_3kg_to_50kg` int(11) NOT NULL,
  `product_weight_AirRate_2kg_to_50kg` int(11) NOT NULL,
  `shipCat_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_shipingcategory`
--

CREATE TABLE `dashboard_shipingcategory` (
  `id` bigint(20) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_shippingexpressglobal`
--

CREATE TABLE `dashboard_shippingexpressglobal` (
  `id` bigint(20) NOT NULL,
  `shiping_city` varchar(200) DEFAULT NULL,
  `shiping_weight` double DEFAULT NULL,
  `shiping_charges` double DEFAULT NULL,
  `air_rate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_shippingexpressglobal`
--

INSERT INTO `dashboard_shippingexpressglobal` (`id`, `shiping_city`, `shiping_weight`, `shiping_charges`, `air_rate`) VALUES
(1, 'Delhi/NCR', 250, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_shippingplusglobal`
--

CREATE TABLE `dashboard_shippingplusglobal` (
  `id` bigint(20) NOT NULL,
  `shiping_city` varchar(200) DEFAULT NULL,
  `shiping_weight` double DEFAULT NULL,
  `shiping_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_shippingplusglobal`
--

INSERT INTO `dashboard_shippingplusglobal` (`id`, `shiping_city`, `shiping_weight`, `shiping_price`) VALUES
(1, 'Delhi', 250, 100);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_shopbycategory`
--

CREATE TABLE `dashboard_shopbycategory` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_shopbycategory`
--

INSERT INTO `dashboard_shopbycategory` (`id`, `category_id`) VALUES
(1, 1),
(4, 3),
(3, 4),
(8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_signup`
--

CREATE TABLE `dashboard_signup` (
  `added_date` datetime(6) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_simpgrp`
--

CREATE TABLE `dashboard_simpgrp` (
  `id` bigint(20) NOT NULL,
  `uniqueid` varchar(20) DEFAULT NULL,
  `simple_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_simpgrp`
--

INSERT INTO `dashboard_simpgrp` (`id`, `uniqueid`, `simple_id`) VALUES
(1, '23570794', 1),
(2, '4875542', 1),
(3, '4875542', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_simpleattribute`
--

CREATE TABLE `dashboard_simpleattribute` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_simpleattribute`
--

INSERT INTO `dashboard_simpleattribute` (`id`, `image_id`, `product_id`) VALUES
(1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_simpleimage`
--

CREATE TABLE `dashboard_simpleimage` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_simpleimage`
--

INSERT INTO `dashboard_simpleimage` (`id`, `image`, `product_id`) VALUES
(1, 'Polo_T-Shirts.jpg', 1),
(2, 'Round-Neck.jpg', 1),
(3, 'Sweatshirt.jpg', 1),
(4, 'tshirt.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_simpleproduct`
--

CREATE TABLE `dashboard_simpleproduct` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `color` varchar(200) DEFAULT NULL,
  `slug` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `final_Price` double DEFAULT NULL,
  `margin` double DEFAULT NULL,
  `packing_charges` int(11) DEFAULT NULL,
  `unit_Weight` int(11) DEFAULT NULL,
  `inventory` int(11) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `gst_id` bigint(20) DEFAULT NULL,
  `product_gsm_type_id` bigint(20) NOT NULL,
  `product_vol_type_id` bigint(20) NOT NULL,
  `size_id` bigint(20) DEFAULT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `unit_price` double DEFAULT NULL,
  `product_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_simpleproduct`
--

INSERT INTO `dashboard_simpleproduct` (`id`, `name`, `color`, `slug`, `description`, `final_Price`, `margin`, `packing_charges`, `unit_Weight`, `inventory`, `create_date`, `gst_id`, `product_gsm_type_id`, `product_vol_type_id`, `size_id`, `subcategory_id`, `unit_price`, `product_type`) VALUES
(1, 'Round Neck T-shirts', 'Blue', 'roundneck', 'A T-shirt, or tee shirt, is a style of fabric shirt named after the T shape of its body and sleeves. Traditionally, it has short sleeves and a round neckline, known as a crew neck,', 380, NULL, 20, 3, 20, '2021-10-10 17:56:45.560013', 2, 1, 1, 2, 1, 360, 'simple');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_sizes`
--

CREATE TABLE `dashboard_sizes` (
  `id` bigint(20) NOT NULL,
  `size` longtext DEFAULT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_sizes`
--

INSERT INTO `dashboard_sizes` (`id`, `size`, `category_id`) VALUES
(1, 'X', 1),
(2, 'M', 1),
(3, 'XXL', 1),
(4, 'XXXL', 1),
(5, 'A$', 2),
(6, 'A3', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_subcategory`
--

CREATE TABLE `dashboard_subcategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL,
  `desc` longtext DEFAULT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_subcategory`
--

INSERT INTO `dashboard_subcategory` (`id`, `name`, `image`, `desc`, `category_id`) VALUES
(1, 'Neck T-Shirts', 'Product/Round-Neck_bxxaTAF.jpg', 'A T-shirt, or tee shirt, is a style of fabric shirt named after the T shape of its body and sleeves. Traditionally, it has short sleeves and a round neckline, known as a crew neck,', 1),
(2, 'Letter Head', 'Product/photoprints_VbylHCE.jpg', 'Printing is a process for mass reproducing text and images using a master form or template. The earliest non-paper products involving printing include ...', 2),
(3, 'Canvas Posters', 'Product/Canvas_rl_Image_3.jpg', 'Canvas Posters is Very Good For Home..', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_testonomial`
--

CREATE TABLE `dashboard_testonomial` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `desc` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_trendingproduct`
--

CREATE TABLE `dashboard_trendingproduct` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_user`
--

CREATE TABLE `dashboard_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_superadmin` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_manager` tinyint(1) NOT NULL,
  `is_operationers` tinyint(1) NOT NULL,
  `is_customer` tinyint(1) NOT NULL,
  `is_guest` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_user`
--

INSERT INTO `dashboard_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `is_superadmin`, `is_admin`, `is_manager`, `is_operationers`, `is_customer`, `is_guest`) VALUES
(1, 'pbkdf2_sha256$260000$KyPNUdh7QmkEe3HCXZm8I1$snahtSrkUgBNPDS9gJh6VngeC84HJMCXtl7scANZ1B0=', '2021-10-14 07:25:23.250564', 0, 'deepakpuri1555@gmail.com', 'Deepak Puri Goswami', '', 'deepakpuri1555@gmail.com', 0, 1, '2021-10-11 05:57:07.766256', 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_user_groups`
--

CREATE TABLE `dashboard_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_user_user_permissions`
--

CREATE TABLE `dashboard_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_vargrp`
--

CREATE TABLE `dashboard_vargrp` (
  `id` bigint(20) NOT NULL,
  `uniqueid` varchar(20) DEFAULT NULL,
  `variable_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_vargrp`
--

INSERT INTO `dashboard_vargrp` (`id`, `uniqueid`, `variable_id`) VALUES
(1, '23570794', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_variableimage`
--

CREATE TABLE `dashboard_variableimage` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_variableimage`
--

INSERT INTO `dashboard_variableimage` (`id`, `image`, `product_id`) VALUES
(1, 'variableproducts/letterhaeds.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_variableproduct`
--

CREATE TABLE `dashboard_variableproduct` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `inventory` int(11) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `product_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_variableproduct`
--

INSERT INTO `dashboard_variableproduct` (`id`, `name`, `slug`, `desc`, `inventory`, `create_date`, `subcategory_id`, `product_type`) VALUES
(1, 'color letter head with margin A4', 'letterhead', 'color letter head with margin A4 color letter head with margin A4 letterhead', 5000, '2021-10-11 09:29:27.101769', 2, 'variable');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_variableproductattributes`
--

CREATE TABLE `dashboard_variableproductattributes` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_Cost_price` double DEFAULT NULL,
  `packing_charge` int(11) DEFAULT NULL,
  `unit_weight` double DEFAULT NULL,
  `product_margin` double DEFAULT NULL,
  `color` varchar(200) DEFAULT NULL,
  `gsm_type_id` bigint(20) NOT NULL,
  `gst_id` bigint(20) DEFAULT NULL,
  `image_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `size_id` bigint(20) DEFAULT NULL,
  `volume_type_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_variableproductattributes`
--

INSERT INTO `dashboard_variableproductattributes` (`id`, `quantity`, `unit_Cost_price`, `packing_charge`, `unit_weight`, `product_margin`, `color`, `gsm_type_id`, `gst_id`, `image_id`, `product_id`, `size_id`, `volume_type_id`) VALUES
(1, 50, 3, 20, 3, NULL, 'Red', 2, 2, 1, 1, 6, 2);

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
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(4, 'contenttypes', 'contenttype'),
(19, 'dashboard', 'admin'),
(62, 'dashboard', 'allprodcuts'),
(7, 'dashboard', 'banner'),
(66, 'dashboard', 'best_offers'),
(42, 'dashboard', 'best_sellers'),
(64, 'dashboard', 'best_sellers_grouped'),
(63, 'dashboard', 'best_sellers_simple'),
(65, 'dashboard', 'best_sellers_variable'),
(41, 'dashboard', 'blog'),
(8, 'dashboard', 'blogcategory'),
(9, 'dashboard', 'category'),
(55, 'dashboard', 'couponglobaladd'),
(40, 'dashboard', 'cupon'),
(20, 'dashboard', 'customer'),
(39, 'dashboard', 'groupedproduct'),
(10, 'dashboard', 'gsmtype'),
(11, 'dashboard', 'gstglobal'),
(69, 'dashboard', 'happyclients'),
(21, 'dashboard', 'manager'),
(38, 'dashboard', 'newlaunchesgrouped'),
(68, 'dashboard', 'newlaunchessimple'),
(67, 'dashboard', 'newlaunchesvariable'),
(22, 'dashboard', 'operation'),
(37, 'dashboard', 'productcolor'),
(36, 'dashboard', 'productimage'),
(35, 'dashboard', 'productquantity'),
(34, 'dashboard', 'productsize'),
(33, 'dashboard', 'producttype'),
(12, 'dashboard', 'productvolumetype'),
(32, 'dashboard', 'shiping'),
(13, 'dashboard', 'shipingcategory'),
(56, 'dashboard', 'shippingexpressglobal'),
(57, 'dashboard', 'shippingplusglobal'),
(31, 'dashboard', 'shopbycategory'),
(23, 'dashboard', 'signup'),
(30, 'dashboard', 'simpgrp'),
(29, 'dashboard', 'simpleattribute'),
(28, 'dashboard', 'simpleimage'),
(27, 'dashboard', 'simpleproduct'),
(14, 'dashboard', 'sizes'),
(15, 'dashboard', 'subcategory'),
(16, 'dashboard', 'testonomial'),
(26, 'dashboard', 'trendingproduct'),
(6, 'dashboard', 'user'),
(25, 'dashboard', 'vargrp'),
(17, 'dashboard', 'variableimage'),
(18, 'dashboard', 'variableproduct'),
(24, 'dashboard', 'variableproductattributes'),
(43, 'Printunlock', 'cart'),
(48, 'Printunlock', 'cartfile'),
(51, 'Printunlock', 'cartgrouped'),
(52, 'Printunlock', 'cartgroupedfile'),
(47, 'Printunlock', 'cartitem'),
(53, 'Printunlock', 'cartsimlefile'),
(50, 'Printunlock', 'cartsimple'),
(49, 'Printunlock', 'cartvariable'),
(54, 'Printunlock', 'cartvariablefile'),
(59, 'Printunlock', 'customergst'),
(61, 'Printunlock', 'differentshippingaddress'),
(44, 'Printunlock', 'guest'),
(45, 'Printunlock', 'order'),
(46, 'Printunlock', 'ordercart'),
(58, 'Printunlock', 'orderfinal'),
(60, 'Printunlock', 'orderimagefile'),
(5, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2021-10-10 13:34:09.066931'),
(2, 'contenttypes', '0002_remove_content_type_name', '2021-10-10 13:34:09.145288'),
(3, 'auth', '0001_initial', '2021-10-10 13:34:09.510682'),
(4, 'auth', '0002_alter_permission_name_max_length', '2021-10-10 13:34:09.581547'),
(5, 'auth', '0003_alter_user_email_max_length', '2021-10-10 13:34:09.594588'),
(6, 'auth', '0004_alter_user_username_opts', '2021-10-10 13:34:09.607123'),
(7, 'auth', '0005_alter_user_last_login_null', '2021-10-10 13:34:09.616652'),
(8, 'auth', '0006_require_contenttypes_0002', '2021-10-10 13:34:09.622648'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2021-10-10 13:34:09.632680'),
(10, 'auth', '0008_alter_user_username_max_length', '2021-10-10 13:34:09.644683'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2021-10-10 13:34:09.654710'),
(12, 'auth', '0010_alter_group_name_max_length', '2021-10-10 13:34:09.679760'),
(13, 'auth', '0011_update_proxy_permissions', '2021-10-10 13:34:09.692611'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2021-10-10 13:34:09.702615'),
(15, 'dashboard', '0001_initial', '2021-10-10 13:34:14.639424'),
(16, 'Printunlock', '0001_initial', '2021-10-10 13:34:15.702240'),
(17, 'admin', '0001_initial', '2021-10-10 13:34:15.939995'),
(18, 'admin', '0002_logentry_remove_auto_add', '2021-10-10 13:34:15.969713'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-10 13:34:16.003680'),
(20, 'dashboard', '0002_remove_gstglobal_category', '2021-10-10 13:34:16.113611'),
(21, 'dashboard', '0003_simpleproduct_unit_price', '2021-10-10 13:34:16.157723'),
(22, 'dashboard', '0004_alter_gstglobal_gst', '2021-10-10 13:34:16.234378'),
(23, 'dashboard', '0005_auto_20211010_1655', '2021-10-10 13:34:16.330777'),
(24, 'sessions', '0001_initial', '2021-10-10 13:34:16.402827'),
(25, 'Printunlock', '0002_cartgrouped_cartsimple_cartvariable', '2021-10-10 17:34:13.413912'),
(26, 'Printunlock', '0003_auto_20211010_2345', '2021-10-10 18:15:09.122682'),
(27, 'Printunlock', '0004_auto_20211010_2358', '2021-10-10 18:28:45.009913'),
(28, 'Printunlock', '0005_auto_20211011_1158', '2021-10-11 06:28:47.736369'),
(29, 'dashboard', '0006_remove_groupedproduct_quantity', '2021-10-11 12:10:31.166673'),
(30, 'dashboard', '0007_remove_groupedproduct_gsm_type', '2021-10-11 12:12:20.674622'),
(31, 'dashboard', '0008_couponglobaladd_shippingexpressglobal_shippingplusglobal', '2021-10-12 18:59:17.901710'),
(32, 'Printunlock', '0006_auto_20211013_0029', '2021-10-12 18:59:18.709807'),
(33, 'Printunlock', '0007_auto_20211013_1645', '2021-10-13 11:15:26.107851'),
(34, 'dashboard', '0009_couponglobaladd_coupon_applied_type', '2021-10-13 11:15:26.141219'),
(35, 'dashboard', '0010_allprodcuts', '2021-10-20 06:07:57.167678'),
(36, 'dashboard', '0011_auto_20211020_1554', '2021-10-20 10:24:19.116217'),
(37, 'dashboard', '0012_best_offers', '2021-10-21 07:39:25.556537'),
(38, 'dashboard', '0013_auto_20211021_1428', '2021-10-21 08:58:49.420129'),
(39, 'dashboard', '0014_happyclients', '2021-10-21 10:22:45.109596'),
(40, 'dashboard', '0015_remove_blogcategory_slug', '2021-10-21 10:58:29.824284');

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
('br4tnve9pb4hrp5rq6t8jbuvp2l3ighl', '.eJxVjDsOwjAQRO_iGlnrxF9Kes5grXcNDiBbipMKcXcSKQVounlv5i0irkuJa89znFichRKn3y4hPXPdAT-w3pukVpd5SnJX5EG7vDbOr8vh_h0U7GVbk_XA6DxBIgJlNQ8WAg1hREZ2oJAQjA5b8k2z9tpbE7Qjk9NI2YrPF-O2N9I:1maAPt:VZQj9HbVFgq5bhQJpVD9yzC-jKZYD0nPxxaFtx6VBUE', '2021-10-26 05:33:33.527847'),
('c3bb856m3d9h5nfh46dgywng7j755h63', '.eJxVjDsOwjAQRO_iGlnrxF9Kes5grXcNDiBbipMKcXcSKQVounlv5i0irkuJa89znFichRKn3y4hPXPdAT-w3pukVpd5SnJX5EG7vDbOr8vh_h0U7GVbk_XA6DxBIgJlNQ8WAg1hREZ2oJAQjA5b8k2z9tpbE7Qjk9NI2YrPF-O2N9I:1maHg7:ktUqr0kg_HfZuwHL6sm5xPOJ8t8p8cOyTlUdSx6Mim4', '2021-10-26 13:18:47.022193'),
('iihuunyjtpcnjn5sv8gdrubzthf4l5vk', '.eJxVjDsOwjAQRO_iGlnrxF9Kes5grXcNDiBbipMKcXcSKQVounlv5i0irkuJa89znFichRKn3y4hPXPdAT-w3pukVpd5SnJX5EG7vDbOr8vh_h0U7GVbk_XA6DxBIgJlNQ8WAg1hREZ2oJAQjA5b8k2z9tpbE7Qjk9NI2YrPF-O2N9I:1mav7D:OlG-ceQeDaudVsPyAsT2uR8Te4UhaW93eV0MixBz8zs', '2021-10-28 07:25:23.255397');

-- --------------------------------------------------------

--
-- Table structure for table `printunlock_cartgrouped`
--

CREATE TABLE `printunlock_cartgrouped` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `quality` varchar(150) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `printunlock_cartgroupedfile`
--

CREATE TABLE `printunlock_cartgroupedfile` (
  `id` bigint(20) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `cartitem_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `printunlock_cartsimlefile`
--

CREATE TABLE `printunlock_cartsimlefile` (
  `id` bigint(20) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `cartitem_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `printunlock_cartsimlefile`
--

INSERT INTO `printunlock_cartsimlefile` (`id`, `file`, `cartitem_id`) VALUES
(1, 'Polo_T-Shirts.jpg', 1),
(2, 'poster.jpg', 1),
(3, 'stationary.jpg', 3),
(4, 'Sweatshirt.jpg', 3),
(5, 'tshirt.jpg', 3),
(6, 'GetCreative-5c0ff4158257d.jpg', 4),
(7, 'gift1.jpg', 4),
(8, '', 5),
(9, 'Polo_T-Shirts.jpg', 1),
(10, 'poster.jpg', 1),
(12, '', 3),
(13, '', 4),
(14, 'connection.py code.PNG', 5),
(15, 'constants.PNG', 5),
(18, 'f4f78c093406a463ed4c141154cb22c6.jpg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `printunlock_cartsimple`
--

CREATE TABLE `printunlock_cartsimple` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `quality` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `printunlock_cartsimple`
--

INSERT INTO `printunlock_cartsimple` (`id`, `product_id`, `user_id`, `quantity`, `size`, `quality`) VALUES
(1, 1, NULL, 2, 'XXL', 'Febric'),
(3, 1, 1, 5, 'XXXL', 'Febric'),
(4, 1, 1, 6, 'M', 'Febric'),
(5, 1, 1, 3, 'X', 'Febric'),
(6, 1, 1, 1, 'M', 'Febric');

-- --------------------------------------------------------

--
-- Table structure for table `printunlock_cartvariable`
--

CREATE TABLE `printunlock_cartvariable` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `quality` varchar(150) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `printunlock_cartvariable`
--

INSERT INTO `printunlock_cartvariable` (`id`, `product_id`, `user_id`, `quality`, `quantity`, `size`) VALUES
(1, 1, 1, '100 Bond', 50, 'A3'),
(2, 1, 1, '100 Bond', 50, 'A$'),
(3, 1, 1, '100 Bond', 50, 'A$'),
(4, 1, 1, '100 Bond', 50, 'A$'),
(5, 1, 1, '100 Bond', 50, 'A$'),
(6, 1, 1, '100 Bond', 50, 'A$'),
(7, 1, 1, '100 Bond', 50, 'A$'),
(8, 1, 1, '100 Bond', 50, 'A$'),
(9, 1, 1, '100 Bond', 50, 'A$'),
(10, 1, 1, '100 Bond', 50, 'A$'),
(11, 1, 1, '100 Bond', 50, 'A$'),
(12, 1, 1, '100 Bond', 50, 'A$');

-- --------------------------------------------------------

--
-- Table structure for table `printunlock_cartvariablefile`
--

CREATE TABLE `printunlock_cartvariablefile` (
  `id` bigint(20) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `cartitem_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `printunlock_cartvariablefile`
--

INSERT INTO `printunlock_cartvariablefile` (`id`, `file`, `cartitem_id`) VALUES
(1, '', 11),
(2, '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `printunlock_customergst`
--

CREATE TABLE `printunlock_customergst` (
  `id` bigint(20) NOT NULL,
  `gst_number` varchar(200) DEFAULT NULL,
  `registred_address` varchar(200) DEFAULT NULL,
  `registered_name` varchar(200) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `printunlock_differentshippingaddress`
--

CREATE TABLE `printunlock_differentshippingaddress` (
  `id` bigint(20) NOT NULL,
  `customer_first_name` varchar(300) DEFAULT NULL,
  `customer_last_name` varchar(300) DEFAULT NULL,
  `customer_email` varchar(300) DEFAULT NULL,
  `customer_phone_number` int(11) DEFAULT NULL,
  `customer_zipcode` int(11) DEFAULT NULL,
  `customer_country` varchar(200) DEFAULT NULL,
  `customer_state` varchar(200) DEFAULT NULL,
  `customer_city` varchar(200) DEFAULT NULL,
  `customer_town` varchar(200) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `printunlock_orderfinal`
--

CREATE TABLE `printunlock_orderfinal` (
  `id` bigint(20) NOT NULL,
  `product` longtext DEFAULT NULL,
  `product_final_price` double DEFAULT NULL,
  `size` longtext DEFAULT NULL,
  `quality` longtext DEFAULT NULL,
  `quantity` longtext DEFAULT NULL,
  `shiping_type` varchar(300) DEFAULT NULL,
  `shiping_charges` double DEFAULT NULL,
  `shiping_zone` varchar(300) DEFAULT NULL,
  `shipping_address` longtext DEFAULT NULL,
  `gst_applied` double DEFAULT NULL,
  `packing_charges` double DEFAULT NULL,
  `product_margin` double DEFAULT NULL,
  `customer_first_name` varchar(300) DEFAULT NULL,
  `customer_last_name` varchar(300) DEFAULT NULL,
  `customer_email` varchar(300) DEFAULT NULL,
  `customer_phone_number` int(11) DEFAULT NULL,
  `customer_zipcode` int(11) DEFAULT NULL,
  `customer_country` varchar(200) DEFAULT NULL,
  `customer_state` varchar(200) DEFAULT NULL,
  `customer_city` varchar(200) DEFAULT NULL,
  `customer_town` varchar(200) DEFAULT NULL,
  `billing_address` longtext DEFAULT NULL,
  `coupon_Applied_type` longtext DEFAULT NULL,
  `final_price_coupon_applied` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `base_price` double DEFAULT NULL,
  `coupon_applied` tinyint(1) DEFAULT NULL,
  `coupon_code` varchar(150) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `order_Status` longtext DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `product_weight` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `printunlock_orderfinal`
--

INSERT INTO `printunlock_orderfinal` (`id`, `product`, `product_final_price`, `size`, `quality`, `quantity`, `shiping_type`, `shiping_charges`, `shiping_zone`, `shipping_address`, `gst_applied`, `packing_charges`, `product_margin`, `customer_first_name`, `customer_last_name`, `customer_email`, `customer_phone_number`, `customer_zipcode`, `customer_country`, `customer_state`, `customer_city`, `customer_town`, `billing_address`, `coupon_Applied_type`, `final_price_coupon_applied`, `user_id`, `base_price`, `coupon_applied`, `coupon_code`, `coupon_discount`, `order_Status`, `product_id`, `product_type`, `product_weight`) VALUES
(1, NULL, NULL, 'A$', '100 Bond', '50', NULL, NULL, NULL, NULL, 12, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 150, 0, NULL, NULL, NULL, 1, 'variable', 150),
(2, NULL, NULL, 'A$', '100 Bond', '50', NULL, NULL, NULL, NULL, 12, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 150, 0, NULL, NULL, NULL, 1, 'variable', 150),
(3, 'color letter head with margin A4', NULL, 'A$', '100 Bond', '50', 'express_shipping', 20, 'Dadar and Nagar Haveli', 'Same As Billing', 12, 20, -176.55384615384614, 'sankar Sainin', 'Sir', 'sankar@gmail.com', 2147483647, 461001, 'Angola', 'Lakshadweep', 'Dadar and Nagar Haveli', 'Bhopal', NULL, 'subtotal', 174, NULL, 150, 1, 'deepak', 20, NULL, 1, 'variable', 150),
(4, 'color letter head with margin A4', NULL, 'A$', '100 Bond', '50', NULL, NULL, NULL, NULL, 12, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 150, 0, NULL, NULL, NULL, 1, 'variable', 150),
(5, 'color letter head with margin A4', NULL, 'A$', '100 Bond', '50', 'express_shipping', 20, 'Bihar', 'Same As Billing', 12, 20, -176.55384615384614, 'Raju ', 'Sharma', 'raju@gmail.com', 2147483647, 461001, 'Bahamas', 'Goa', 'Gujarat', 'Hoshangabd', NULL, 'subtotal', 174, 1, 150, 1, 'deepak', 20, NULL, 1, 'variable', 150),
(6, 'color letter head with margin A4', NULL, 'A3', '100 Geo Bond', '50', 'express_shipping', 20, 'Himachal Pradesh', 'Same As Billing', 12, 20, -176.55384615384614, 'deepakp Puri ', 'Goswami', 'deepak@gmail.com', 2147483647, 462021, 'India', 'Andhra Pradesh', 'Haryana', 'Bhopal', NULL, 'subtotal', 174, 1, 150, 1, 'deepak', 20, NULL, 1, 'variable', 150),
(7, 'color letter head with margin A4', NULL, 'A3', '100 Geo Bond', '50', NULL, NULL, NULL, NULL, 12, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 150, 0, NULL, NULL, NULL, 1, 'variable', 150),
(8, 'color letter head with margin A4', NULL, 'A3', '100 Bond', '50', 'express_shipping', 20, 'Haryana', 'Same As Billing', 12, 20, -176.55384615384614, 'Deepak Puri', 'Goswami', 'deepakpuri@gmail.com', 2147483647, 461001, 'Algeria', 'Bihar', 'Dadar and Nagar Haveli', 'Bhopal', NULL, 'subtotal', 174, 1, 150, 1, 'deepak', 20, NULL, 1, 'variable', 150),
(9, 'color letter head with margin A4', NULL, 'A$', '100 Bond', '50', NULL, NULL, NULL, NULL, 12, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 150, 0, NULL, NULL, NULL, 1, 'variable', 150),
(10, 'color letter head with margin A4', NULL, 'A$', '100 Bond', '50', NULL, NULL, NULL, NULL, 12, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 150, 0, NULL, NULL, NULL, 1, 'variable', 150),
(11, 'color letter head with margin A4', NULL, 'A$', '100 Bond', '50', NULL, NULL, NULL, NULL, 12, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 150, 0, NULL, NULL, NULL, 1, 'variable', 150),
(12, 'color letter head with margin A4', NULL, 'A$', '100 Bond', '50', NULL, NULL, NULL, NULL, 12, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 150, 0, NULL, NULL, NULL, 1, 'variable', 150),
(13, 'color letter head with margin A4', NULL, 'A$', '100 Bond', '50', NULL, NULL, NULL, NULL, 12, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 150, 0, NULL, NULL, NULL, 1, 'variable', 150);

-- --------------------------------------------------------

--
-- Table structure for table `printunlock_orderimagefile`
--

CREATE TABLE `printunlock_orderimagefile` (
  `id` bigint(20) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `printunlock_orderimagefile`
--

INSERT INTO `printunlock_orderimagefile` (`id`, `file`, `order_id`) VALUES
(1, '', 1),
(2, 'mainfunctionfile.PNG', 2),
(3, 'tumblerfunction.PNG', 2),
(4, 'twitterfunction.PNG', 2),
(5, 'error.PNG', 3),
(6, '', 4),
(7, '', 5),
(8, 'Polo_T-Shirts.jpg', 6),
(9, 'poster.jpg', 6),
(10, 'Round-Neck.jpg', 6),
(11, 'photoframe.jpeg', 7),
(12, 'f4f78c093406a463ed4c141154cb22c6.jpg', 8),
(13, '', 9),
(14, '', 10),
(15, '', 11),
(16, '', 12),
(17, '', 13);

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
-- Indexes for table `dashboard_admin`
--
ALTER TABLE `dashboard_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `dashboard_allprodcuts`
--
ALTER TABLE `dashboard_allprodcuts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_allprodcut_grouped_product_id_644137d3_fk_dashboard` (`grouped_product_id`),
  ADD KEY `dashboard_allprodcut_simple_product_id_9b76e88c_fk_dashboard` (`simple_product_id`),
  ADD KEY `dashboard_allprodcut_variable_product_id_a803748e_fk_dashboard` (`variable_product_id`);

--
-- Indexes for table `dashboard_banner`
--
ALTER TABLE `dashboard_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_best_offers`
--
ALTER TABLE `dashboard_best_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_best_sellers_grouped`
--
ALTER TABLE `dashboard_best_sellers_grouped`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_best_selle_group_product_id_c721b74a_fk_dashboard` (`group_product_id`);

--
-- Indexes for table `dashboard_best_sellers_simple`
--
ALTER TABLE `dashboard_best_sellers_simple`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_best_selle_simple_product_id_6d5dcef9_fk_dashboard` (`simple_product_id`);

--
-- Indexes for table `dashboard_best_sellers_variable`
--
ALTER TABLE `dashboard_best_sellers_variable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_best_selle_variable_product_id_bb5f91ad_fk_dashboard` (`variable_product_id`);

--
-- Indexes for table `dashboard_blog`
--
ALTER TABLE `dashboard_blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `dashboard_blog_category_id_d9309a2e_fk_dashboard_blogcategory_id` (`category_id`);

--
-- Indexes for table `dashboard_blogcategory`
--
ALTER TABLE `dashboard_blogcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_category`
--
ALTER TABLE `dashboard_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_category_name_72edcf83` (`name`);

--
-- Indexes for table `dashboard_couponglobaladd`
--
ALTER TABLE `dashboard_couponglobaladd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_cupon`
--
ALTER TABLE `dashboard_cupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_cupon_product_id_dbd8678d_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_customer`
--
ALTER TABLE `dashboard_customer`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `dashboard_groupedproduct`
--
ALTER TABLE `dashboard_groupedproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_gsmtype`
--
ALTER TABLE `dashboard_gsmtype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_gsmtype_category_id_5ce45b83_fk_dashboard_category_id` (`category_id`);

--
-- Indexes for table `dashboard_gstglobal`
--
ALTER TABLE `dashboard_gstglobal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_happyclients`
--
ALTER TABLE `dashboard_happyclients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_manager`
--
ALTER TABLE `dashboard_manager`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `dashboard_newlaunchesgrouped`
--
ALTER TABLE `dashboard_newlaunchesgrouped`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_newlaunche_product_id_12f40ab8_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_newlaunchessimple`
--
ALTER TABLE `dashboard_newlaunchessimple`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_newlaunche_product_id_78cafbb7_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_newlaunchesvariable`
--
ALTER TABLE `dashboard_newlaunchesvariable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_newlaunche_product_id_cc16f680_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_operation`
--
ALTER TABLE `dashboard_operation`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `dashboard_productcolor`
--
ALTER TABLE `dashboard_productcolor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_productcol_product_id_b960bdfd_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_productimage`
--
ALTER TABLE `dashboard_productimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_productima_product_id_b32d81dd_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_productquantity`
--
ALTER TABLE `dashboard_productquantity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_productqua_product_id_4fc20db5_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_productsize`
--
ALTER TABLE `dashboard_productsize`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_productsiz_product_id_05b3c847_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_producttype`
--
ALTER TABLE `dashboard_producttype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_producttyp_product_id_6688e62d_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_productvolumetype`
--
ALTER TABLE `dashboard_productvolumetype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_productvol_category_id_524739f9_fk_dashboard` (`category_id`);

--
-- Indexes for table `dashboard_shiping`
--
ALTER TABLE `dashboard_shiping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_shiping_shipCat_id_c42eb43e_fk_dashboard` (`shipCat_id`);

--
-- Indexes for table `dashboard_shipingcategory`
--
ALTER TABLE `dashboard_shipingcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_shippingexpressglobal`
--
ALTER TABLE `dashboard_shippingexpressglobal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_shippingplusglobal`
--
ALTER TABLE `dashboard_shippingplusglobal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_shopbycategory`
--
ALTER TABLE `dashboard_shopbycategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_shopbycate_category_id_98740e6e_fk_dashboard` (`category_id`);

--
-- Indexes for table `dashboard_signup`
--
ALTER TABLE `dashboard_signup`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `dashboard_simpgrp`
--
ALTER TABLE `dashboard_simpgrp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_simpgrp_simple_id_e658f787_fk_dashboard` (`simple_id`);

--
-- Indexes for table `dashboard_simpleattribute`
--
ALTER TABLE `dashboard_simpleattribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_simpleattr_image_id_5f36e9e1_fk_dashboard` (`image_id`),
  ADD KEY `dashboard_simpleattr_product_id_de8f8623_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_simpleimage`
--
ALTER TABLE `dashboard_simpleimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_simpleimag_product_id_182b7b6e_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_simpleproduct`
--
ALTER TABLE `dashboard_simpleproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_simpleprod_gst_id_7d781541_fk_dashboard` (`gst_id`),
  ADD KEY `dashboard_simpleprod_product_gsm_type_id_44a99c1f_fk_dashboard` (`product_gsm_type_id`),
  ADD KEY `dashboard_simpleprod_product_vol_type_id_ebe2bb04_fk_dashboard` (`product_vol_type_id`),
  ADD KEY `dashboard_simpleproduct_size_id_c3f4feb2_fk_dashboard_sizes_id` (`size_id`),
  ADD KEY `dashboard_simpleprod_subcategory_id_4a590edf_fk_dashboard` (`subcategory_id`);

--
-- Indexes for table `dashboard_sizes`
--
ALTER TABLE `dashboard_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_sizes_category_id_bd209615_fk_dashboard_category_id` (`category_id`);

--
-- Indexes for table `dashboard_subcategory`
--
ALTER TABLE `dashboard_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_subcategor_category_id_0e1cb67f_fk_dashboard` (`category_id`),
  ADD KEY `dashboard_subcategory_name_43664070` (`name`);

--
-- Indexes for table `dashboard_testonomial`
--
ALTER TABLE `dashboard_testonomial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_trendingproduct`
--
ALTER TABLE `dashboard_trendingproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_trendingpr_product_id_b4e62b90_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_user`
--
ALTER TABLE `dashboard_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `dashboard_user_groups`
--
ALTER TABLE `dashboard_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dashboard_user_groups_user_id_group_id_2c570fca_uniq` (`user_id`,`group_id`),
  ADD KEY `dashboard_user_groups_group_id_54086039_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `dashboard_user_user_permissions`
--
ALTER TABLE `dashboard_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dashboard_user_user_perm_user_id_permission_id_550d0c70_uniq` (`user_id`,`permission_id`),
  ADD KEY `dashboard_user_user__permission_id_70269958_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `dashboard_vargrp`
--
ALTER TABLE `dashboard_vargrp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_vargrp_variable_id_9f5b8b78_fk_dashboard` (`variable_id`);

--
-- Indexes for table `dashboard_variableimage`
--
ALTER TABLE `dashboard_variableimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_variableim_product_id_328b5403_fk_dashboard` (`product_id`);

--
-- Indexes for table `dashboard_variableproduct`
--
ALTER TABLE `dashboard_variableproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `dashboard_variablepr_subcategory_id_db9905a0_fk_dashboard` (`subcategory_id`);

--
-- Indexes for table `dashboard_variableproductattributes`
--
ALTER TABLE `dashboard_variableproductattributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_variablepr_gsm_type_id_eb9fc6cf_fk_dashboard` (`gsm_type_id`),
  ADD KEY `dashboard_variablepr_gst_id_233cf08f_fk_dashboard` (`gst_id`),
  ADD KEY `dashboard_variablepr_image_id_b94c9483_fk_dashboard` (`image_id`),
  ADD KEY `dashboard_variablepr_product_id_95018677_fk_dashboard` (`product_id`),
  ADD KEY `dashboard_variablepr_size_id_3920108f_fk_dashboard` (`size_id`),
  ADD KEY `dashboard_variablepr_volume_type_id_03a158ed_fk_dashboard` (`volume_type_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_dashboard_user_id` (`user_id`);

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
-- Indexes for table `printunlock_cartgrouped`
--
ALTER TABLE `printunlock_cartgrouped`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Printunlock_cartgrou_product_id_18606aab_fk_dashboard` (`product_id`),
  ADD KEY `Printunlock_cartgrou_user_id_ad7ed3f4_fk_dashboard` (`user_id`);

--
-- Indexes for table `printunlock_cartgroupedfile`
--
ALTER TABLE `printunlock_cartgroupedfile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Printunlock_cartgrou_cartitem_id_7208950a_fk_Printunlo` (`cartitem_id`);

--
-- Indexes for table `printunlock_cartsimlefile`
--
ALTER TABLE `printunlock_cartsimlefile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Printunlock_cartsiml_cartitem_id_f1c990fc_fk_Printunlo` (`cartitem_id`);

--
-- Indexes for table `printunlock_cartsimple`
--
ALTER TABLE `printunlock_cartsimple`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Printunlock_cartsimp_product_id_67100a21_fk_dashboard` (`product_id`),
  ADD KEY `Printunlock_cartsimp_user_id_44461f2d_fk_dashboard` (`user_id`);

--
-- Indexes for table `printunlock_cartvariable`
--
ALTER TABLE `printunlock_cartvariable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Printunlock_cartvari_product_id_cdccd05d_fk_dashboard` (`product_id`),
  ADD KEY `Printunlock_cartvari_user_id_a744c2ed_fk_dashboard` (`user_id`);

--
-- Indexes for table `printunlock_cartvariablefile`
--
ALTER TABLE `printunlock_cartvariablefile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Printunlock_cartvari_cartitem_id_0ee3f7d1_fk_Printunlo` (`cartitem_id`);

--
-- Indexes for table `printunlock_customergst`
--
ALTER TABLE `printunlock_customergst`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Printunlock_customer_order_id_e0164b59_fk_Printunlo` (`order_id`);

--
-- Indexes for table `printunlock_differentshippingaddress`
--
ALTER TABLE `printunlock_differentshippingaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Printunlock_differen_order_id_ef6941c3_fk_Printunlo` (`order_id`);

--
-- Indexes for table `printunlock_orderfinal`
--
ALTER TABLE `printunlock_orderfinal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Printunlock_orderfin_user_id_98046107_fk_dashboard` (`user_id`);

--
-- Indexes for table `printunlock_orderimagefile`
--
ALTER TABLE `printunlock_orderimagefile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Printunlock_orderima_order_id_9ca5f3d7_fk_Printunlo` (`order_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `dashboard_allprodcuts`
--
ALTER TABLE `dashboard_allprodcuts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_banner`
--
ALTER TABLE `dashboard_banner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dashboard_best_offers`
--
ALTER TABLE `dashboard_best_offers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dashboard_best_sellers_grouped`
--
ALTER TABLE `dashboard_best_sellers_grouped`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dashboard_best_sellers_simple`
--
ALTER TABLE `dashboard_best_sellers_simple`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_best_sellers_variable`
--
ALTER TABLE `dashboard_best_sellers_variable`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dashboard_blog`
--
ALTER TABLE `dashboard_blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_blogcategory`
--
ALTER TABLE `dashboard_blogcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dashboard_category`
--
ALTER TABLE `dashboard_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dashboard_couponglobaladd`
--
ALTER TABLE `dashboard_couponglobaladd`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dashboard_cupon`
--
ALTER TABLE `dashboard_cupon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_groupedproduct`
--
ALTER TABLE `dashboard_groupedproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_gsmtype`
--
ALTER TABLE `dashboard_gsmtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dashboard_gstglobal`
--
ALTER TABLE `dashboard_gstglobal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dashboard_happyclients`
--
ALTER TABLE `dashboard_happyclients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dashboard_newlaunchesgrouped`
--
ALTER TABLE `dashboard_newlaunchesgrouped`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_newlaunchessimple`
--
ALTER TABLE `dashboard_newlaunchessimple`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_newlaunchesvariable`
--
ALTER TABLE `dashboard_newlaunchesvariable`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_productcolor`
--
ALTER TABLE `dashboard_productcolor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_productimage`
--
ALTER TABLE `dashboard_productimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_productquantity`
--
ALTER TABLE `dashboard_productquantity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_productsize`
--
ALTER TABLE `dashboard_productsize`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_producttype`
--
ALTER TABLE `dashboard_producttype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_productvolumetype`
--
ALTER TABLE `dashboard_productvolumetype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dashboard_shiping`
--
ALTER TABLE `dashboard_shiping`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_shipingcategory`
--
ALTER TABLE `dashboard_shipingcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_shippingexpressglobal`
--
ALTER TABLE `dashboard_shippingexpressglobal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_shippingplusglobal`
--
ALTER TABLE `dashboard_shippingplusglobal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_shopbycategory`
--
ALTER TABLE `dashboard_shopbycategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dashboard_simpgrp`
--
ALTER TABLE `dashboard_simpgrp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dashboard_simpleattribute`
--
ALTER TABLE `dashboard_simpleattribute`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_simpleimage`
--
ALTER TABLE `dashboard_simpleimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dashboard_simpleproduct`
--
ALTER TABLE `dashboard_simpleproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_sizes`
--
ALTER TABLE `dashboard_sizes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dashboard_subcategory`
--
ALTER TABLE `dashboard_subcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dashboard_testonomial`
--
ALTER TABLE `dashboard_testonomial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_trendingproduct`
--
ALTER TABLE `dashboard_trendingproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_user`
--
ALTER TABLE `dashboard_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_user_groups`
--
ALTER TABLE `dashboard_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_user_user_permissions`
--
ALTER TABLE `dashboard_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_vargrp`
--
ALTER TABLE `dashboard_vargrp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_variableimage`
--
ALTER TABLE `dashboard_variableimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_variableproduct`
--
ALTER TABLE `dashboard_variableproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_variableproductattributes`
--
ALTER TABLE `dashboard_variableproductattributes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `printunlock_cartgrouped`
--
ALTER TABLE `printunlock_cartgrouped`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `printunlock_cartgroupedfile`
--
ALTER TABLE `printunlock_cartgroupedfile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `printunlock_cartsimlefile`
--
ALTER TABLE `printunlock_cartsimlefile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `printunlock_cartsimple`
--
ALTER TABLE `printunlock_cartsimple`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `printunlock_cartvariable`
--
ALTER TABLE `printunlock_cartvariable`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `printunlock_cartvariablefile`
--
ALTER TABLE `printunlock_cartvariablefile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `printunlock_customergst`
--
ALTER TABLE `printunlock_customergst`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `printunlock_differentshippingaddress`
--
ALTER TABLE `printunlock_differentshippingaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `printunlock_orderfinal`
--
ALTER TABLE `printunlock_orderfinal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `printunlock_orderimagefile`
--
ALTER TABLE `printunlock_orderimagefile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
-- Constraints for table `dashboard_admin`
--
ALTER TABLE `dashboard_admin`
  ADD CONSTRAINT `dashboard_admin_user_id_141285df_fk_dashboard_user_id` FOREIGN KEY (`user_id`) REFERENCES `dashboard_user` (`id`);

--
-- Constraints for table `dashboard_allprodcuts`
--
ALTER TABLE `dashboard_allprodcuts`
  ADD CONSTRAINT `dashboard_allprodcut_grouped_product_id_644137d3_fk_dashboard` FOREIGN KEY (`grouped_product_id`) REFERENCES `dashboard_groupedproduct` (`id`),
  ADD CONSTRAINT `dashboard_allprodcut_simple_product_id_9b76e88c_fk_dashboard` FOREIGN KEY (`simple_product_id`) REFERENCES `dashboard_simpleproduct` (`id`),
  ADD CONSTRAINT `dashboard_allprodcut_variable_product_id_a803748e_fk_dashboard` FOREIGN KEY (`variable_product_id`) REFERENCES `dashboard_variableproductattributes` (`id`);

--
-- Constraints for table `dashboard_best_sellers_grouped`
--
ALTER TABLE `dashboard_best_sellers_grouped`
  ADD CONSTRAINT `dashboard_best_selle_group_product_id_c721b74a_fk_dashboard` FOREIGN KEY (`group_product_id`) REFERENCES `dashboard_groupedproduct` (`id`);

--
-- Constraints for table `dashboard_best_sellers_simple`
--
ALTER TABLE `dashboard_best_sellers_simple`
  ADD CONSTRAINT `dashboard_best_selle_simple_product_id_6d5dcef9_fk_dashboard` FOREIGN KEY (`simple_product_id`) REFERENCES `dashboard_simpleproduct` (`id`);

--
-- Constraints for table `dashboard_best_sellers_variable`
--
ALTER TABLE `dashboard_best_sellers_variable`
  ADD CONSTRAINT `dashboard_best_selle_variable_product_id_bb5f91ad_fk_dashboard` FOREIGN KEY (`variable_product_id`) REFERENCES `dashboard_variableproductattributes` (`id`);

--
-- Constraints for table `dashboard_blog`
--
ALTER TABLE `dashboard_blog`
  ADD CONSTRAINT `dashboard_blog_category_id_d9309a2e_fk_dashboard_blogcategory_id` FOREIGN KEY (`category_id`) REFERENCES `dashboard_blogcategory` (`id`);

--
-- Constraints for table `dashboard_cupon`
--
ALTER TABLE `dashboard_cupon`
  ADD CONSTRAINT `dashboard_cupon_product_id_dbd8678d_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_variableproduct` (`id`);

--
-- Constraints for table `dashboard_customer`
--
ALTER TABLE `dashboard_customer`
  ADD CONSTRAINT `dashboard_customer_user_id_6f1d2062_fk_dashboard_user_id` FOREIGN KEY (`user_id`) REFERENCES `dashboard_user` (`id`);

--
-- Constraints for table `dashboard_gsmtype`
--
ALTER TABLE `dashboard_gsmtype`
  ADD CONSTRAINT `dashboard_gsmtype_category_id_5ce45b83_fk_dashboard_category_id` FOREIGN KEY (`category_id`) REFERENCES `dashboard_category` (`id`);

--
-- Constraints for table `dashboard_manager`
--
ALTER TABLE `dashboard_manager`
  ADD CONSTRAINT `dashboard_manager_user_id_5693b50e_fk_dashboard_user_id` FOREIGN KEY (`user_id`) REFERENCES `dashboard_user` (`id`);

--
-- Constraints for table `dashboard_newlaunchesgrouped`
--
ALTER TABLE `dashboard_newlaunchesgrouped`
  ADD CONSTRAINT `dashboard_newlaunche_product_id_12f40ab8_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_groupedproduct` (`id`);

--
-- Constraints for table `dashboard_newlaunchessimple`
--
ALTER TABLE `dashboard_newlaunchessimple`
  ADD CONSTRAINT `dashboard_newlaunche_product_id_78cafbb7_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_simpleproduct` (`id`);

--
-- Constraints for table `dashboard_newlaunchesvariable`
--
ALTER TABLE `dashboard_newlaunchesvariable`
  ADD CONSTRAINT `dashboard_newlaunche_product_id_cc16f680_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_variableproductattributes` (`id`);

--
-- Constraints for table `dashboard_operation`
--
ALTER TABLE `dashboard_operation`
  ADD CONSTRAINT `dashboard_operation_user_id_baf6574c_fk_dashboard_user_id` FOREIGN KEY (`user_id`) REFERENCES `dashboard_user` (`id`);

--
-- Constraints for table `dashboard_productcolor`
--
ALTER TABLE `dashboard_productcolor`
  ADD CONSTRAINT `dashboard_productcol_product_id_b960bdfd_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_variableproduct` (`id`);

--
-- Constraints for table `dashboard_productimage`
--
ALTER TABLE `dashboard_productimage`
  ADD CONSTRAINT `dashboard_productima_product_id_b32d81dd_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_variableproduct` (`id`);

--
-- Constraints for table `dashboard_productquantity`
--
ALTER TABLE `dashboard_productquantity`
  ADD CONSTRAINT `dashboard_productqua_product_id_4fc20db5_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_variableproduct` (`id`);

--
-- Constraints for table `dashboard_productsize`
--
ALTER TABLE `dashboard_productsize`
  ADD CONSTRAINT `dashboard_productsiz_product_id_05b3c847_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_variableproduct` (`id`);

--
-- Constraints for table `dashboard_producttype`
--
ALTER TABLE `dashboard_producttype`
  ADD CONSTRAINT `dashboard_producttyp_product_id_6688e62d_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_variableproduct` (`id`);

--
-- Constraints for table `dashboard_productvolumetype`
--
ALTER TABLE `dashboard_productvolumetype`
  ADD CONSTRAINT `dashboard_productvol_category_id_524739f9_fk_dashboard` FOREIGN KEY (`category_id`) REFERENCES `dashboard_category` (`id`);

--
-- Constraints for table `dashboard_shiping`
--
ALTER TABLE `dashboard_shiping`
  ADD CONSTRAINT `dashboard_shiping_shipCat_id_c42eb43e_fk_dashboard` FOREIGN KEY (`shipCat_id`) REFERENCES `dashboard_shipingcategory` (`id`);

--
-- Constraints for table `dashboard_shopbycategory`
--
ALTER TABLE `dashboard_shopbycategory`
  ADD CONSTRAINT `dashboard_shopbycate_category_id_98740e6e_fk_dashboard` FOREIGN KEY (`category_id`) REFERENCES `dashboard_category` (`id`);

--
-- Constraints for table `dashboard_signup`
--
ALTER TABLE `dashboard_signup`
  ADD CONSTRAINT `dashboard_signup_user_id_c305401f_fk_dashboard_user_id` FOREIGN KEY (`user_id`) REFERENCES `dashboard_user` (`id`);

--
-- Constraints for table `dashboard_simpgrp`
--
ALTER TABLE `dashboard_simpgrp`
  ADD CONSTRAINT `dashboard_simpgrp_simple_id_e658f787_fk_dashboard` FOREIGN KEY (`simple_id`) REFERENCES `dashboard_simpleproduct` (`id`);

--
-- Constraints for table `dashboard_simpleattribute`
--
ALTER TABLE `dashboard_simpleattribute`
  ADD CONSTRAINT `dashboard_simpleattr_image_id_5f36e9e1_fk_dashboard` FOREIGN KEY (`image_id`) REFERENCES `dashboard_simpleimage` (`id`),
  ADD CONSTRAINT `dashboard_simpleattr_product_id_de8f8623_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_simpleproduct` (`id`);

--
-- Constraints for table `dashboard_simpleimage`
--
ALTER TABLE `dashboard_simpleimage`
  ADD CONSTRAINT `dashboard_simpleimag_product_id_182b7b6e_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_simpleproduct` (`id`);

--
-- Constraints for table `dashboard_simpleproduct`
--
ALTER TABLE `dashboard_simpleproduct`
  ADD CONSTRAINT `dashboard_simpleprod_gst_id_7d781541_fk_dashboard` FOREIGN KEY (`gst_id`) REFERENCES `dashboard_gstglobal` (`id`),
  ADD CONSTRAINT `dashboard_simpleprod_product_gsm_type_id_44a99c1f_fk_dashboard` FOREIGN KEY (`product_gsm_type_id`) REFERENCES `dashboard_gsmtype` (`id`),
  ADD CONSTRAINT `dashboard_simpleprod_product_vol_type_id_ebe2bb04_fk_dashboard` FOREIGN KEY (`product_vol_type_id`) REFERENCES `dashboard_productvolumetype` (`id`),
  ADD CONSTRAINT `dashboard_simpleprod_subcategory_id_4a590edf_fk_dashboard` FOREIGN KEY (`subcategory_id`) REFERENCES `dashboard_subcategory` (`id`),
  ADD CONSTRAINT `dashboard_simpleproduct_size_id_c3f4feb2_fk_dashboard_sizes_id` FOREIGN KEY (`size_id`) REFERENCES `dashboard_sizes` (`id`);

--
-- Constraints for table `dashboard_sizes`
--
ALTER TABLE `dashboard_sizes`
  ADD CONSTRAINT `dashboard_sizes_category_id_bd209615_fk_dashboard_category_id` FOREIGN KEY (`category_id`) REFERENCES `dashboard_category` (`id`);

--
-- Constraints for table `dashboard_subcategory`
--
ALTER TABLE `dashboard_subcategory`
  ADD CONSTRAINT `dashboard_subcategor_category_id_0e1cb67f_fk_dashboard` FOREIGN KEY (`category_id`) REFERENCES `dashboard_category` (`id`);

--
-- Constraints for table `dashboard_trendingproduct`
--
ALTER TABLE `dashboard_trendingproduct`
  ADD CONSTRAINT `dashboard_trendingpr_product_id_b4e62b90_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_variableproduct` (`id`);

--
-- Constraints for table `dashboard_user_groups`
--
ALTER TABLE `dashboard_user_groups`
  ADD CONSTRAINT `dashboard_user_groups_group_id_54086039_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `dashboard_user_groups_user_id_a915c7fc_fk_dashboard_user_id` FOREIGN KEY (`user_id`) REFERENCES `dashboard_user` (`id`);

--
-- Constraints for table `dashboard_user_user_permissions`
--
ALTER TABLE `dashboard_user_user_permissions`
  ADD CONSTRAINT `dashboard_user_user__permission_id_70269958_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `dashboard_user_user__user_id_ea9b20c2_fk_dashboard` FOREIGN KEY (`user_id`) REFERENCES `dashboard_user` (`id`);

--
-- Constraints for table `dashboard_vargrp`
--
ALTER TABLE `dashboard_vargrp`
  ADD CONSTRAINT `dashboard_vargrp_variable_id_9f5b8b78_fk_dashboard` FOREIGN KEY (`variable_id`) REFERENCES `dashboard_variableproductattributes` (`id`);

--
-- Constraints for table `dashboard_variableimage`
--
ALTER TABLE `dashboard_variableimage`
  ADD CONSTRAINT `dashboard_variableim_product_id_328b5403_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_variableproduct` (`id`);

--
-- Constraints for table `dashboard_variableproduct`
--
ALTER TABLE `dashboard_variableproduct`
  ADD CONSTRAINT `dashboard_variablepr_subcategory_id_db9905a0_fk_dashboard` FOREIGN KEY (`subcategory_id`) REFERENCES `dashboard_subcategory` (`id`);

--
-- Constraints for table `dashboard_variableproductattributes`
--
ALTER TABLE `dashboard_variableproductattributes`
  ADD CONSTRAINT `dashboard_variablepr_gsm_type_id_eb9fc6cf_fk_dashboard` FOREIGN KEY (`gsm_type_id`) REFERENCES `dashboard_gsmtype` (`id`),
  ADD CONSTRAINT `dashboard_variablepr_gst_id_233cf08f_fk_dashboard` FOREIGN KEY (`gst_id`) REFERENCES `dashboard_gstglobal` (`id`),
  ADD CONSTRAINT `dashboard_variablepr_image_id_b94c9483_fk_dashboard` FOREIGN KEY (`image_id`) REFERENCES `dashboard_variableimage` (`id`),
  ADD CONSTRAINT `dashboard_variablepr_product_id_95018677_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_variableproduct` (`id`),
  ADD CONSTRAINT `dashboard_variablepr_size_id_3920108f_fk_dashboard` FOREIGN KEY (`size_id`) REFERENCES `dashboard_sizes` (`id`),
  ADD CONSTRAINT `dashboard_variablepr_volume_type_id_03a158ed_fk_dashboard` FOREIGN KEY (`volume_type_id`) REFERENCES `dashboard_productvolumetype` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_dashboard_user_id` FOREIGN KEY (`user_id`) REFERENCES `dashboard_user` (`id`);

--
-- Constraints for table `printunlock_cartgrouped`
--
ALTER TABLE `printunlock_cartgrouped`
  ADD CONSTRAINT `Printunlock_cartgrou_product_id_18606aab_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_groupedproduct` (`id`),
  ADD CONSTRAINT `Printunlock_cartgrou_user_id_ad7ed3f4_fk_dashboard` FOREIGN KEY (`user_id`) REFERENCES `dashboard_customer` (`user_id`);

--
-- Constraints for table `printunlock_cartgroupedfile`
--
ALTER TABLE `printunlock_cartgroupedfile`
  ADD CONSTRAINT `Printunlock_cartgrou_cartitem_id_7208950a_fk_Printunlo` FOREIGN KEY (`cartitem_id`) REFERENCES `printunlock_cartgrouped` (`id`);

--
-- Constraints for table `printunlock_cartsimlefile`
--
ALTER TABLE `printunlock_cartsimlefile`
  ADD CONSTRAINT `Printunlock_cartsiml_cartitem_id_f1c990fc_fk_Printunlo` FOREIGN KEY (`cartitem_id`) REFERENCES `printunlock_cartsimple` (`id`);

--
-- Constraints for table `printunlock_cartsimple`
--
ALTER TABLE `printunlock_cartsimple`
  ADD CONSTRAINT `Printunlock_cartsimp_product_id_67100a21_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_simpleproduct` (`id`),
  ADD CONSTRAINT `Printunlock_cartsimp_user_id_44461f2d_fk_dashboard` FOREIGN KEY (`user_id`) REFERENCES `dashboard_customer` (`user_id`);

--
-- Constraints for table `printunlock_cartvariable`
--
ALTER TABLE `printunlock_cartvariable`
  ADD CONSTRAINT `Printunlock_cartvari_product_id_cdccd05d_fk_dashboard` FOREIGN KEY (`product_id`) REFERENCES `dashboard_variableproductattributes` (`id`),
  ADD CONSTRAINT `Printunlock_cartvari_user_id_a744c2ed_fk_dashboard` FOREIGN KEY (`user_id`) REFERENCES `dashboard_customer` (`user_id`);

--
-- Constraints for table `printunlock_cartvariablefile`
--
ALTER TABLE `printunlock_cartvariablefile`
  ADD CONSTRAINT `Printunlock_cartvari_cartitem_id_0ee3f7d1_fk_Printunlo` FOREIGN KEY (`cartitem_id`) REFERENCES `printunlock_cartvariable` (`id`);

--
-- Constraints for table `printunlock_customergst`
--
ALTER TABLE `printunlock_customergst`
  ADD CONSTRAINT `Printunlock_customer_order_id_e0164b59_fk_Printunlo` FOREIGN KEY (`order_id`) REFERENCES `printunlock_orderfinal` (`id`);

--
-- Constraints for table `printunlock_differentshippingaddress`
--
ALTER TABLE `printunlock_differentshippingaddress`
  ADD CONSTRAINT `Printunlock_differen_order_id_ef6941c3_fk_Printunlo` FOREIGN KEY (`order_id`) REFERENCES `printunlock_orderfinal` (`id`);

--
-- Constraints for table `printunlock_orderfinal`
--
ALTER TABLE `printunlock_orderfinal`
  ADD CONSTRAINT `Printunlock_orderfin_user_id_98046107_fk_dashboard` FOREIGN KEY (`user_id`) REFERENCES `dashboard_customer` (`user_id`);

--
-- Constraints for table `printunlock_orderimagefile`
--
ALTER TABLE `printunlock_orderimagefile`
  ADD CONSTRAINT `Printunlock_orderima_order_id_9ca5f3d7_fk_Printunlo` FOREIGN KEY (`order_id`) REFERENCES `printunlock_orderfinal` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
