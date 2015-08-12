-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2015 at 06:30 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `heattransfer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `status`) VALUES
('admin', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE IF NOT EXISTS `advertise` (
`id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`id`, `name`, `alias`, `image`, `url`, `cat_id`, `order`, `created`, `status`) VALUES
(1, 'Logo', 'logo', '1439395545201517133958263.png', '', 1, 1, '2015-08-12 18:05:45', 1),
(2, 'Banner', 'banner', '14393641245710494slide.jpg', '', 2, 1, '2015-08-12 09:22:04', 1),
(3, 'Slide 2', 'slide-2', '14393645045717405slide1.jpg', '', 2, 2, '2015-08-12 09:28:24', 1),
(4, 'Slide 3', 'slide-3', '14393645145720088slide2.jpg', '', 2, 3, '2015-08-12 09:28:34', 1),
(5, 'Banner_right_1', 'banner_right_1', '1439365371banner_right.jpg', '', 3, NULL, '2015-08-12 09:42:51', 1),
(6, 'Banner_right_2', 'banner_right_2', '1439365383banner_right2.jpg', '', 4, NULL, '2015-08-12 09:43:03', 1),
(7, 'Image_center_1', 'image_center_1', '1439376432banner2.jpg', '', 5, 1, '2015-08-12 12:47:12', 1),
(8, 'Image_center_2', 'image_center_2', '1439376442banner2a.jpg', '', 5, 2, '2015-08-12 12:47:22', 1),
(9, 'Image_center_3', 'image_center_3', '1439376452banner2c.jpg', '', 5, 3, '2015-08-12 12:47:32', 1),
(10, 'Image_left_1', 'image_left_1', '1439376805banner1.jpg', '', 6, 1, '2015-08-12 12:53:25', 1),
(11, 'Image_left_2', 'image_left_2', '1439376820banner_luoicatgo.jpg', '', 6, 1, '2015-08-12 12:53:40', 1),
(12, 'Thương hiệu 1', 'thuong-hieu-1', '1439379876logo1.jpg', '', 7, 1, '2015-08-12 13:44:36', 1),
(13, 'Thương hiệu 2', 'thuong-hieu-2', '1439379884logo2.jpg', '', 7, 2, '2015-08-12 13:44:44', 1),
(14, 'Thương hiệu 3', 'thuong-hieu-3', '1439379964logo3.jpg', '', 7, 3, '2015-08-12 13:46:04', 1),
(15, 'Thương hiệu 4', 'thuong-hieu-4', '1439379911logo4.jpg', '', 7, 4, '2015-08-12 13:45:11', 1),
(16, 'Thương hiệu 5', 'thuong-hieu-5', '1439379923logo5.jpg', '', 7, 5, '2015-08-12 13:45:23', 1),
(17, 'Thương hiệu 6', 'thuong-hieu-6', '1439379935logo6.jpg', '', 7, 6, '2015-08-12 13:45:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `alias`, `status`, `ordering`, `created`) VALUES
(1, 'Logo', 'logo', 1, NULL, '2015-04-20 13:31:49'),
(2, 'Slide', 'slide', 1, NULL, '2015-08-12 09:20:11'),
(3, 'Banner 1 [ Hình ảnh bên phải ]', 'banner-1-[-hinh-anh-ben-phai-]', 1, NULL, '2015-08-12 09:16:40'),
(4, 'Banner 2 [ Hình ảnh bên phải ]', 'banner-2-[-hinh-anh-ben-phai-]', 1, NULL, '2015-08-12 09:16:46'),
(5, 'Quảng cáo [ Hình ảnh chính giữa ]', 'quang-cao-[-hinh-anh-chinh-giua-]', 1, NULL, '2015-08-12 09:17:10'),
(6, 'Quảng cáo 2 [ Hình ảnh bên trái ]', 'quang-cao-2-[-hinh-anh-ben-trai-]', 1, NULL, '2015-08-12 09:17:23'),
(7, '[ Thương hiệu nỗi bật ]', '[-thuong-hieu-noi-bat-]', 1, NULL, '2015-08-12 09:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `category_pro`
--

CREATE TABLE IF NOT EXISTS `category_pro` (
`id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_pro`
--

INSERT INTO `category_pro` (`id`, `parent_id`, `name`, `alias`, `status`, `ordering`, `title`, `keyword`, `description`, `created`) VALUES
(1, 0, 'Nhãn in ép chuyển nhiệt', 'nhan-in-ep-chuyen-nhiet', 1, 1, 'Nhãn in ép chuyển nhiệt', 'nhan in ep chuyen nhiet', 'Nhãn in ép chuyển nhiệt', '2015-08-12 10:28:05'),
(2, 0, 'Nhãn in ép chuyển nhiệt offset', 'nhan-in-ep-chuyen-nhiet-offset', 1, 2, 'Nhãn in ép chuyển nhiệt offset', 'nhan in ep chuyen nhiet offset', 'Nhãn in ép chuyển nhiệt offset', '2015-08-12 10:28:26'),
(3, 0, 'Nhãn in trực tiếp', 'nhan-in-truc-tiep', 1, 2, 'Nhãn in trực tiếp', 'nhan in truc tiep', 'Nhãn in trực tiếp', '2015-08-12 10:29:13'),
(4, 0, 'Nhãn thẻ bài', 'nhan-the-bai', 1, 2, 'Nhãn thẻ bài', 'nhan the bai', 'Nhãn thẻ bài', '2015-08-12 10:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
`id` int(11) NOT NULL,
  `subject` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `subject`, `content`, `name`, `email`, `phone`, `address`, `created`, `status`) VALUES
(1, 'test', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus', 'a', 'a', NULL, NULL, '2014-06-24 00:00:00', 0),
(2, 'test 1', 'test 1', 'b', 'b', NULL, NULL, '2014-06-24 00:00:00', 0),
(3, 'hoi', 'cai gi do', 'tam', 'pndtam@gmail.com', NULL, NULL, '2014-06-26 15:51:38', 0),
(4, 'hoi', 'cai gi do', 'tam', 'pndtam@gmail.com', NULL, NULL, '2014-06-26 15:53:19', 1),
(5, 'asdfasdf asdf', 'adsfa asdf asdf', 'tam', 'pndtam@gmail.com', NULL, NULL, '2014-06-27 11:19:18', 1),
(6, 'asdfasdf asdf', 'adsfa asdf asdf', 'tam', 'pndtam@gmail.com', NULL, NULL, '2014-06-27 11:20:59', 1),
(7, 'asdfasdf asdf', 'adsfa asdf asdf', 'tam', 'pndtam@gmail.com', NULL, NULL, '2014-06-27 11:25:45', 1),
(8, 'asdf', 'asdf', 'asdf', 'pndtam@gmail.com', NULL, NULL, '2014-06-27 11:26:16', 1),
(9, 'asdf', 'asdf', 'asdf', 'pndtam@gmail.com', NULL, NULL, '2014-06-27 11:28:29', 1),
(10, 'asdf', 'asdf', 'asdf', 'pndtam@gmail.com', NULL, NULL, '2014-06-27 11:30:25', 1),
(11, 'asdf', 'asdf', 'asdf', 'pndtam@gmail.com', NULL, NULL, '2014-06-27 11:32:25', 1),
(12, 'abc', 'abc', 'tam', 'pndtam@gmail.com', NULL, NULL, '2014-09-23 11:03:06', 0),
(13, 'test', 'test', 'ta,', 'pndtam@gmail.com', '0903527178', 'fsdlkj', '2015-08-12 16:01:01', 1),
(14, 'test', 'test', 'ta,', 'pndtam@gmail.com', '0903527178', 'fsdlkj', '2015-08-12 16:03:26', 1),
(15, 'test', 'test', 'ta,', 'pndtam@gmail.com', '0903527178', 'fsdlkj', '2015-08-12 16:03:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE IF NOT EXISTS `khachhang` (
`id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `name`, `alias`, `description`, `content`, `image`, `order`, `status`, `created`) VALUES
(1, 'Hoa mai Bình Định', 'hoa-mai-binh-dinh', '', '<p>Hoa mai b&igrave;nh định</p>\r\n', '1403765873300x215-7.png', NULL, 1, '2014-06-26 13:58:07'),
(2, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765906300x215-7.png', NULL, 1, '2014-06-26 13:58:26'),
(3, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765977hoamai.jpg', NULL, 1, '2014-06-26 13:59:37'),
(4, 'Hoa mai Bình Định 2', 'hoa-mai-binh-dinh-2', '', '<p>Hoa mai b&igrave;nh định 2</p>\r\n', '1403765996300x215-7.png', NULL, 1, '2014-06-26 13:59:56'),
(5, 'b', 'b', 'a', '<p>a</p>\r\n', '1403766007hoamai.jpg', 3, 1, '2014-06-26 14:00:07'),
(6, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766016300x215-7.png', 1, 1, '2014-06-26 14:00:16'),
(7, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766031hoamai.jpg', 1, 1, '2014-06-26 14:00:31'),
(8, 'test 3', 'test-3', 'test 3', '<p>test 3</p>\r\n', '1403766043300x215-7.png', 1, 1, '2014-06-26 14:00:43'),
(9, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766058hoamai.jpg', NULL, 1, '2014-06-26 14:00:58'),
(10, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766070300x215-7.png', NULL, 1, '2014-06-26 14:01:10'),
(11, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766079hoamai.jpg', NULL, 1, '2014-06-26 14:01:19'),
(12, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766088300x215-7.png', NULL, 1, '2014-06-26 14:01:28'),
(13, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766099300x215-7.png', NULL, 1, '2014-06-26 14:01:39'),
(15, 'teaasdfasdf', 'teaasdfasdf', 'asdfasdf', '<p>asdf</p>\r\n', '1403766113300x215-7.png', NULL, 1, '2014-06-26 14:01:53'),
(16, 'Tam', 'tam', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1429863223x0f8e67a52271afaabe024d6d382e9998.jpg.pagespeed.ic.KCGo8SLkeSt_YQWAUd2y.jpg', NULL, 1, '2015-04-24 10:13:43'),
(17, 'Tam adf', 'tam-adf', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1429863166img.jpg', NULL, 1, '2015-04-24 10:12:46'),
(18, 'test 1', 'test-1', 'asdf', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/image1.jpeg" style="height:177px; width:284px" /></p>\r\n', '1429863148x16090109059_4bf3cbcd2a_z.jpg.pagespeed.ic.d7123OPAq8NJ-3lGr4tL.jpg', NULL, 1, '2015-04-24 10:12:28'),
(19, 'Tu van hoa mai', 'tu-van-hoa-mai', 'tu van hoa mai', '<p>Tu van hoa mai</p>\r\n', '1429862659x0f8e67a52271afaabe024d6d382e9998.jpg.pagespeed.ic.KCGo8SLkeSt_YQWAUd2y.jpg', 1, 1, '2015-04-24 10:04:19'),
(20, 'Cafe Thuy Moc', 'cafe-thuy-moc', 'cafe thuy moc\r\nkhong gian thoang mat', '<p>cafe thuy moc</p>\r\n', '1429870632x0f8e67a52271afaabe024d6d382e9998.jpg.pagespeed.ic.KCGo8SLkeSt_YQWAUd2y.jpg', NULL, 1, '2015-04-24 12:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` mediumtext COLLATE utf8_unicode_ci,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_cat`
--

CREATE TABLE IF NOT EXISTS `menu_cat` (
`id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` mediumtext COLLATE utf8_unicode_ci,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `ordering` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `cat1_id` int(11) DEFAULT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banchay` tinyint(1) NOT NULL DEFAULT '0',
  `noibat` tinyint(1) NOT NULL DEFAULT '0',
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `cat_id`, `cat1_id`, `name`, `alias`, `description`, `content`, `image`, `banchay`, `noibat`, `hot`, `order`, `status`, `created`) VALUES
(1, 1, NULL, 'Sản phầm 1', 'san-pham-1', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '14393688681616b9a60e27193749c6158c09d551dc.jpg', 1, 1, 0, 1, 1, '2015-08-12 10:41:08'),
(2, 1, NULL, 'Sản phầm 2', 'san-pham-2', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '143936888310665102_727548330661537_6145848124390979652_n-jpg.240.jpg', 1, 0, 1, 2, 1, '2015-08-12 10:41:23'),
(3, 1, NULL, 'Sản phầm 3', 'san-pham-3', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439368907717294536471818.jpg', 0, 1, 1, 3, 1, '2015-08-12 10:41:47'),
(4, 1, NULL, 'Sản phầm 4', 'san-pham-4', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439368922congtruongit.com-IMG_6086_Fotor.jpg', 0, 0, 1, 4, 1, '2015-08-12 10:42:02'),
(5, 2, NULL, 'Sản phầm 5', 'san-pham-5', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439368941Custom-Iron-On-Label.jpg', 0, 1, 0, 5, 1, '2015-08-12 10:42:21'),
(6, 2, NULL, 'Sản phầm 6', 'san-pham-6', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439368955det2-500x500.jpg', 1, 0, 0, 5, 1, '2015-08-12 10:42:35'),
(7, 2, NULL, 'Sản phầm 7', 'san-pham-7', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439368974detail.21996689_8a72ff0b7b5a452e90c14647886e368e.jpg', 0, 0, 1, 7, 1, '2015-08-12 10:42:54'),
(8, 2, NULL, 'Sản phầm 8', 'san-pham-8', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439368998detlh7-500x500.jpg', 0, 0, 1, 8, 1, '2015-08-12 10:43:18'),
(9, 3, NULL, 'Sản phầm 9', 'san-pham-9', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439369018goctudo2.jpg', 1, 0, 1, 9, 1, '2015-08-12 10:43:38'),
(10, 3, NULL, 'Sản phầm 10', 'san-pham-10', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439369038detlh7-500x500.jpg', 0, 1, 1, 10, 1, '2015-08-12 10:43:58'),
(11, 3, NULL, 'Sản phầm 11', 'san-pham-11', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439369054img_6060_fotor-jpg.364.jpg', 1, 0, 0, 11, 1, '2015-08-12 10:44:14'),
(12, 3, NULL, 'Sản phầm 12', 'san-pham-12', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439369070img_6090_fotor-jpg.375.jpg', 0, 1, 0, 12, 1, '2015-08-12 10:44:30'),
(13, 4, NULL, 'Sản phầm 13', 'san-pham-13', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439369087img_20120628_102817_0-500x500.jpeg', 1, 0, 0, 13, 1, '2015-08-12 10:44:47'),
(14, 4, NULL, 'Sản phầm 14', 'san-pham-14', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439369105img-6106-fotor.jpg', 0, 0, 1, 14, 1, '2015-08-12 10:45:05'),
(15, 4, NULL, 'Sản phầm 15', 'san-pham-15', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439369119logothethao1-500x500.jpg', 1, 1, 1, 15, 1, '2015-08-12 10:45:19'),
(16, 4, NULL, 'Sản phầm 16', 'san-pham-16', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439369135may-in-chuyen-nhiet.jpg', 1, 0, 0, 16, 1, '2015-08-12 10:45:35'),
(17, 1, NULL, 'Sản phầm 17', 'san-pham-17', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439369183may-in-chuyen-nhiet.jpg', 0, 1, 0, 17, 1, '2015-08-12 10:46:23'),
(18, 1, NULL, 'Sản phầm 18', 'san-pham-18', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439369200satinlh2-500x500.jpg', 1, 1, 1, 18, 1, '2015-08-12 10:46:40'),
(19, 1, NULL, 'Sản phầm 19', 'san-pham-19', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439369216satinlh9-500x500.jpg', 0, 0, 1, 19, 1, '2015-08-12 10:46:56'),
(20, 1, NULL, 'Sản phầm 20', 'san-pham-20', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439369236vkg1313292768.JPG', 0, 1, 1, 20, 1, '2015-08-12 10:47:16'),
(21, 2, NULL, 'Sản phầm 21', 'san-pham-21', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439369262whs1414466992.jpg', 0, 1, 1, 22, 1, '2015-08-12 10:47:42'),
(22, 2, NULL, 'Sản phầm 23', 'san-pham-23', '** Độ bám dính cao – giặt 60 lần không bong tróc.\r\n\r\n**Đa dạng, phù hợp với mọi chất liệu - không kén màu.\r\n\r\n** Đội ngũ thiết kế, in ấn nhiệt tình, chuyên nghiệp.', '<p><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Độ b&aacute;m d&iacute;nh cao &ndash; giặt&nbsp;</span><strong>60</strong><span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">&nbsp;lần kh&ocirc;ng bong tr&oacute;c.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">**Đa dạng, ph&ugrave; hợp với mọi chất liệu - kh&ocirc;ng k&eacute;n m&agrave;u.</span><br />\r\n<br />\r\n<span style="background-color:rgb(250, 250, 250); color:rgb(20, 20, 20); font-family:arial,tahoma,verdana,arial; font-size:14.6666669845581px">** Đội ngũ thiết kế, in ấn nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</span></p>\r\n', '1439369294zva1380768743.jpg', 1, 1, 1, 23, 1, '2015-08-12 10:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
`id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `name`, `alias`, `description`, `content`, `image`, `order`, `status`, `created`) VALUES
(1, 'Hoa mai Bình Định', 'hoa-mai-binh-dinh', '', '<p>Hoa mai b&igrave;nh định</p>\r\n', '1403765873300x215-7.png', NULL, 1, '2014-06-26 13:58:07'),
(2, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765906300x215-7.png', NULL, 1, '2014-06-26 13:58:26'),
(3, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765977hoamai.jpg', NULL, 1, '2014-06-26 13:59:37'),
(4, 'Hoa mai Bình Định 2', 'hoa-mai-binh-dinh-2', '', '<p>Hoa mai b&igrave;nh định 2</p>\r\n', '1403765996300x215-7.png', NULL, 1, '2014-06-26 13:59:56'),
(5, 'b', 'b', 'a', '<p>a</p>\r\n', '1403766007hoamai.jpg', 3, 1, '2014-06-26 14:00:07'),
(6, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766016300x215-7.png', 1, 1, '2014-06-26 14:00:16'),
(7, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766031hoamai.jpg', 1, 1, '2014-06-26 14:00:31'),
(8, 'test 3', 'test-3', 'test 3', '<p>test 3</p>\r\n', '1403766043300x215-7.png', 1, 1, '2014-06-26 14:00:43'),
(9, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766058hoamai.jpg', NULL, 1, '2014-06-26 14:00:58'),
(10, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766070300x215-7.png', NULL, 1, '2014-06-26 14:01:10'),
(11, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766079hoamai.jpg', NULL, 1, '2014-06-26 14:01:19'),
(12, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766088300x215-7.png', NULL, 1, '2014-06-26 14:01:28'),
(13, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766099300x215-7.png', NULL, 1, '2014-06-26 14:01:39'),
(15, 'teaasdfasdf', 'teaasdfasdf', 'asdfasdf', '<p>asdf</p>\r\n', '1403766113300x215-7.png', NULL, 1, '2014-06-26 14:01:53'),
(16, 'Tam', 'tam', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1403766124hoamai.jpg', NULL, 1, '2014-06-26 14:02:11'),
(17, 'Tam adf', 'tam-adf', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1403766143300x215-7.png', NULL, 1, '2014-06-26 17:04:03'),
(18, 'test 1', 'test-1', 'asdf', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/image1.jpeg" style="height:177px; width:284px" /></p>\r\n', '1403766152hoamai.jpg', NULL, 1, '2014-06-26 14:02:32'),
(19, 'Tu van hoa mai', 'tu-van-hoa-mai', 'tu van hoa mai', '<p>Tu van hoa mai</p>\r\n', '1403841463hoamai.jpg', 1, 1, '2014-06-27 10:57:43'),
(20, 'Dich Vu cham soc hoa mai', 'dich-vu-cham-soc-hoa-mai', 'cham soc hoa mai', '<p>Dich vu cham soc hoa mai</p>\r\n', '14121525371403765977hoamai.jpg', NULL, 1, '2014-10-01 15:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions_admin`
--

CREATE TABLE IF NOT EXISTS `sessions_admin` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions_admin`
--

INSERT INTO `sessions_admin` (`id`, `expire`, `data`) VALUES
('02b0ffg8dq2kocaftmn11cnf84', 1439398699, 0x64333638343162663030303765383730373538663932613639626566646139375f5f69647c733a353a2261646d696e223b64333638343162663030303765383730373538663932613639626566646139375f5f6e616d657c733a353a2261646d696e223b64333638343162663030303765383730373538663932613639626566646139376e616d657c733a353a2241646d696e223b64333638343162663030303765383730373538663932613639626566646139375f5f7374617465737c613a313a7b733a343a226e616d65223b623a313b7d);

-- --------------------------------------------------------

--
-- Table structure for table `static`
--

CREATE TABLE IF NOT EXISTS `static` (
`id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `selected` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `static`
--

INSERT INTO `static` (`id`, `name`, `alias`, `content`, `status`, `selected`, `created`, `keyword`, `description`) VALUES
(1, 'Liên hệ', 'lien-he', '<p><a href="ymsgr:sendIM?thaivinh85&amp;m=Li%C3%AAn%20h%E1%BB%87%20mua%20hoa"><img src="http://opi.yahoo.com/online?u=thaivinh85&amp;m=g&amp;t=2=us" style="float:left" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:medium">Điện thoại: 090 915 6858_Th&aacute;i Vinh</span></p>\r\n\r\n<p><span style="font-size:medium">Email: thaivinh85@yahoo.com</span></p>\r\n\r\n<p>&copy; Copyright 2013. Design by <a href="http://thietkewebcms.com" target="_blank">ThietKeWebCMS.Com</a></p>\r\n', 1, 0, '2014-06-27 13:47:08', NULL, NULL),
(2, 'Description', 'description', '<p>Ban hoa mai, B&aacute;n hoa mai.</p>\r\n', 1, 0, '2014-06-27 15:50:20', NULL, NULL),
(3, 'Keyword', 'keyword', '<p>Ban hoa mai, b&aacute;n hoa mai.</p>\r\n', 1, 0, '2014-06-27 15:53:33', NULL, NULL),
(4, 'Giới thiệu', 'gioi-thieu', '<p style="text-align: justify;">Đầu th&aacute;ng 8/2014, si&ecirc;u xe &quot;c&aacute;nh chim&quot; Mercedes-Benz SLS AMG m&agrave;u đen mờ của một th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh nh&agrave; nữ diễn vi&ecirc;n Tăng Thanh H&agrave; được bắt gặp đi đăng k&yacute; biển số tại một địa điểm ở TP.HCM. Kh&ocirc;ng l&acirc;u sau đ&oacute;, chiếc xe mang biển số 51A-90906. Ngo&agrave;i phi&ecirc;n bản m&agrave;u đen, ở Việt Nam c&ograve;n c&oacute; hai chiếc Mercedes-Benz SLS AMG m&agrave;u bạc v&agrave; m&agrave;u đỏ kh&aacute;c. Bản m&agrave;u bạc về nước hồi năm 2010 cũng mang biển số S&agrave;i G&ograve;n trong khi chiếc m&agrave;u đỏ mới về th&aacute;ng 6/2014 phục vụ một sự kiện của Merces-Benz Việt Nam.</p>\r\n\r\n<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>\r\n\r\n<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore<br />\r\net dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>\r\n\r\n<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore<br />\r\net dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>\r\n', 1, 0, '2015-08-12 15:20:04', '', ''),
(5, 'Địa chỉ', 'dia-chi', '<p>123 Cống Quỳnh</p>\r\n', 1, 0, '2015-05-14 15:18:14', NULL, NULL),
(6, 'Điện thoại', 'dien-thoai', '<p>0903.527.178</p>\r\n', 1, 0, '2015-05-05 15:29:21', NULL, NULL),
(7, 'Email', 'email', '<p>pndtam@gmail.com</p>\r\n', 1, 0, '2015-05-05 15:29:38', NULL, NULL),
(8, 'Google', 'google', '<p>http://google.com.vn</p>\r\n', 1, 0, '2015-05-05 15:30:32', NULL, NULL),
(9, 'Facebook', 'facebook', '<p>http://facebook.com</p>\r\n', 1, 0, '2015-05-05 15:30:51', NULL, NULL),
(10, 'Twitter', 'twitter', '<p>http://twitter.com</p>\r\n', 1, 0, '2015-05-05 15:31:06', NULL, NULL),
(11, 'Bàn ghế gỗ pallet HCM', 'ban-ghe-go-pallet-hcm', '<p>b&agrave;n ghế</p>\r\n', 1, 1, '2015-06-03 15:08:48', 'ban ghe pallet', 'ban ghe pallet');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE IF NOT EXISTS `tintuc` (
`id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`id`, `name`, `alias`, `description`, `content`, `image`, `order`, `status`, `created`, `keyword`) VALUES
(1, 'Sàn nhẹ Panen - Công nghệ mới cho xây dựng hiện đại', 'san-nhe-panen-cong-nghe-moi-cho-xay-dung-hien-dai', 'Hiện nay cùng với sự phát triển mạnh của các khu đô thị lớn, các tòa nhà cao tầng mọc lên trên khắp đất nước. Để bắt kịp xu thế phát triển đó, nhiều doanh nghiệp xây dựng ngày càng hướng tới việc sử dụng các vật liệu mới nhằm tiết kiệm chi phí, tăng ', '<p>Hiện nay c&ugrave;ng với sự ph&aacute;t triển mạnh của c&aacute;c khu đ&ocirc; thị lớn, c&aacute;c t&ograve;a nh&agrave; cao tầng mọc l&ecirc;n tr&ecirc;n khắp đất nước. Để bắt kịp xu thế ph&aacute;t triển đ&oacute;, nhiều doanh nghiệp x&acirc;y dựng ng&agrave;y c&agrave;ng hướng tới việc sử dụng c&aacute;c vật liệu mới nhằm tiết kiệm chi ph&iacute;, tăng tiến độ x&acirc;y dựng m&agrave; vẫn đảm bảo được chất lượng, t&iacute;nh thẩm mỹ của ng&ocirc;i nh&agrave; v&agrave; ph&ugrave; hợp với xu hướng thiết kế hiện đại.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/60.jpg" style="border:0px; height:500px; margin:0px; padding:0px; width:500px" /></p>\r\n\r\n<p>L&agrave; một trong những vật liệu mới v&agrave; hiện đại được &aacute;p dụng c&ocirc;ng nghệ của Ph&aacute;p, s&agrave;n b&ecirc; t&ocirc;ng nhẹ panen l&agrave; loại s&agrave;n c&oacute; nhiều ưu điểm vượt trội so với những s&agrave;n b&ecirc; t&ocirc;ng kh&aacute;c. Với kết cấu khoa học, s&agrave;n b&ecirc; t&ocirc;ng si&ecirc;u nhẹ c&oacute; sức chịu tải tốt, rất ph&ugrave; hợp với c&aacute;c c&ocirc;ng tr&igrave;nh x&acirc;y dựng nh&agrave; cao tầng, hay mở rộng cải tạo với những căn nh&agrave; c&oacute; nền m&oacute;ng yếu.</p>\r\n\r\n<p>Theo thiết kế, s&agrave;n panen si&ecirc;u nhẹ c&oacute; kết cấu đơn giản, được lắp gh&eacute;p bởi dầm chịu lực v&agrave; những vi&ecirc;n Block s&agrave;n rỗng được đ&uacute;c sẵn c&oacute; trọng lượng thấp n&ecirc;n kh&ocirc;ng cần hoặc chỉ sử dụng rất &iacute;t cốt pha hay cột chống. Thời gian thi c&ocirc;ng s&agrave;n nhanh, mặt bằng thi c&ocirc;ng gọn, sạch, hạn chế tối đa việc d&ugrave;ng c&aacute;c vật liệu rời n&ecirc;n tr&aacute;nh được bụi v&agrave; &ocirc; nhiễm m&ocirc;i trường, chi ph&iacute; giảm so với s&agrave;n đổ tại chỗ do kh&ocirc;ng cần phải sử dụng cốp pha, d&agrave;n gi&aacute;o thi c&ocirc;ng. Đặc biệt s&agrave;n m&aacute;i c&oacute; thể sử dụng ngay sau khi thi c&ocirc;ng, c&oacute; thể tiếp tục l&ecirc;n tầng sau khi đổ s&agrave;n.</p>\r\n\r\n<p>Theo anh Cường - chủ đại l&yacute; vật liệu v&agrave; chuy&ecirc;n thi c&ocirc;ng s&agrave;n b&ecirc; t&ocirc;ng panen ở Huyện Ho&agrave;i Đức cho biết, hiện nay tr&ecirc;n thị trường c&oacute; rất nhiều loại s&agrave;n b&ecirc; t&ocirc;ng, mỗi loại s&agrave;n đều c&oacute; ưu nhược điểm ri&ecirc;ng, nhưng đối với s&agrave;n b&ecirc; t&ocirc;ng panen được rất nhiều kh&aacute;ch h&agrave;ng cũng như chủ đầu tư của c&aacute;c c&ocirc;ng tr&igrave;nh quan t&acirc;m v&agrave; lựa chọn, bởi t&iacute;nh tiện dụng như c&aacute;ch &acirc;m c&aacute;ch nhiệt tốt, vận chuyển dễ d&agrave;ng, v&agrave; đặc biệt nhất ph&ugrave; hợp với hầu hết c&aacute;c kiến tr&uacute;c nh&agrave; tại Việt Nam, cho d&ugrave; l&agrave; những c&ocirc;ng tr&igrave;nh cao ốc hay đến c&aacute;c c&ocirc;ng tr&igrave;nh d&acirc;n sự, sửa chữa, mở rộng, cải tạo nh&agrave; trong ng&otilde; hay mặt phố.</p>\r\n\r\n<p>Với những ưu điểm vượt trội, s&agrave;n b&ecirc; t&ocirc;ng si&ecirc;u nhẹ panen đ&atilde; được rất nhiều quốc gia ti&ecirc;n tiến ứng dụng trong việc x&acirc;y dựng những c&ocirc;ng tr&igrave;nh lớn cũng như nh&agrave; d&acirc;n sự, v&agrave; trong tương lai loại s&agrave;n n&agrave;y sẽ được sử dụng ở mọi c&ocirc;ng tr&igrave;nh một c&aacute;ch rộng r&atilde;i v&agrave; phổ biến.</p>\r\n', '1439390488tintuc1.jpg', 1, 1, '2015-08-12 16:41:28', NULL),
(2, 'Phân loại và chọn mua bơm công nghiệp', 'phan-loai-va-chon-mua-bom-cong-nghiep', 'Nhu cầu của con người về máy bơm công nghiệp trong các lĩnh vực sản xuất công nghiệp, nông nghiệp hay trong chăn nuôi trồng trọt là vô cùng lớn. Chính vì vậy, rất nhiều người đã tìm kiếm đến những chiếc máy bơm công nghiệp để phục vụ cho công việc củ', '<p>Nhu cầu của con người về m&aacute;y bơm c&ocirc;ng nghiệp trong c&aacute;c lĩnh vực sản xuất c&ocirc;ng nghiệp, n&ocirc;ng nghiệp hay trong chăn nu&ocirc;i trồng trọt l&agrave; v&ocirc; c&ugrave;ng lớn. Ch&iacute;nh v&igrave; vậy, rất nhiều người đ&atilde; t&igrave;m kiếm đến những chiếc m&aacute;y bơm c&ocirc;ng nghiệp để phục vụ cho c&ocirc;ng việc của m&igrave;nh. Nhưng nếu bạn l&agrave; một người muốn mua m&aacute;y bơm c&ocirc;ng nghiệp v&agrave; gần như kh&ocirc;ng biết g&igrave; về ch&uacute;ng th&igrave; h&atilde;y đọc b&agrave;i viết n&agrave;y để c&oacute; thể trang bị cho m&igrave;nh được những kiến thức đủ để mua một chiếc m&aacute;y bơm c&ocirc;ng nghiệp.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_6.jpg" style="border:0px; height:359px; margin:0px; padding:0px; width:473px" /></p>\r\n\r\n<p>Trước ti&ecirc;n ch&uacute;ng ta h&atilde;y c&ugrave;ng nhau t&igrave;m hiểu về nguy&ecirc;n l&yacute; hoạt động của những chiếc m&aacute;y bơm c&ocirc;ng nghiệp. Ch&uacute;ng hoạt động dựa tr&ecirc;n nguy&ecirc;n tắc năng lượng động lực v&agrave; chuyển t&iacute;ch cực để g&acirc;y &aacute;p lực cho chất lỏng v&agrave; gi&uacute;p chất lỏng di chuyển. Hầu hết, c&aacute;c loại m&aacute;y bơm c&ocirc;ng nghiệp đều d&ugrave;ng nguồn điện để gi&uacute;p động cơ bơm c&oacute; thể hoạt động nhưng ch&uacute;ng vẫn c&oacute; thể sử dụng xăng hay dầu diesel để vận h&agrave;nh.</p>\r\n\r\n<p>M&aacute;y bơm nước c&ocirc;ng nghiệp c&oacute; thể được sử dụng ở đ&acirc;u? M&aacute;y bơm nước c&ocirc;ng nghiệp c&oacute; thể sử dụng ở rất nhiều nơi kh&aacute;c nhau như trong c&aacute;c nh&agrave; m&aacute;y c&ocirc;ng nghiệp, trong lĩnh vực sản xuất n&ocirc;ng nghiệp hay trong hệ thống cấp tho&aacute;t nước của th&agrave;nh phố hoặc cũng c&oacute; thể l&agrave; trong hộ gia đ&igrave;nh.</p>\r\n\r\n<p>V&agrave; bạn lu&ocirc;n cần phải lựa chọn cho một chiếc m&aacute;y bơm c&ocirc;ng nghiệp ph&ugrave; hợp nhất với nhu cầu sử dụng. Sau đ&acirc;y ch&uacute;ng t&ocirc;i sẽ đưa ra cho bạn những loại m&aacute;y bơm c&ocirc;ng nghiệp kh&aacute;c nhau để bạn c&oacute; thể lựa chọn.</p>\r\n\r\n<p>Bơm kh&iacute; n&acirc;ng : Đ&acirc;y l&agrave; loại bơm được sử dụng để tạo d&ograve;ng, phun nước. Nguy&ecirc;n tắc hoạt động của bơm kh&iacute; n&acirc;ng l&agrave; nước sẽ được kết hợp với kh&iacute; được bơm xuống phần th&acirc;n bơm tạo th&agrave;nh một hỗn hợp gồm kh&iacute; v&agrave; nước. Do hỗn hợp n&agrave;y nhẹ hơn nước n&ecirc;n n&oacute; tr&agrave;o l&ecirc;n v&agrave; tạo ra một &aacute;p suất gi&uacute;p nước c&oacute; thể được đưa ra b&ecirc;n ngo&agrave;i qua th&acirc;n bơm.</p>\r\n\r\n<p>Bơm điện ch&igrave;m : Đ&acirc;y l&agrave; loại bơm được đặt ch&igrave;m v&agrave; sử dụng ở b&ecirc;n dưới chất lỏng. M&aacute;y bơm n&agrave;y hoạt động theo nguy&ecirc;n tắc khi motor quay nước được h&uacute;t v&agrave;o miệng h&uacute;t v&agrave; vận chuyển ra b&ecirc;n ngo&agrave;i qua ống đẩy. Bơm điện ch&igrave;m c&oacute; ưu điểm đ&oacute; l&agrave; gọn nhẹ v&agrave; cho hiệu suất cao nhưng nhược điểm của n&oacute; lại l&agrave; kh&oacute; sửa chữa do đặt ch&igrave;m dưới nguồn chất lỏng.</p>\r\n\r\n<p>Bơm ly t&acirc;m : Loại m&aacute;y bơm c&oacute; mặt tr&ecirc;n thị trường với số lượng rất nhiều v&agrave; được sử dụng rất nhiều trong c&aacute;c hộ gia đ&igrave;nh. Nguy&ecirc;n tắc hoạt động của bơm ly t&acirc;m đ&oacute; l&agrave; dựa v&agrave;o lực ly t&acirc;m v&agrave; dưới t&aacute;c động của lực ly t&acirc;m th&igrave; lượng chất lỏng sẽ được đưa ra b&ecirc;n ngo&agrave;i, b&ecirc;n trong th&acirc;n bơm sẽ tạo ra một khoảng ch&acirc;n kh&ocirc;ng để nước c&oacute; thể được h&uacute;t v&agrave;o. Đặc điểm của việc sử dụng bơm ly t&acirc;m đ&oacute; l&agrave; phải c&oacute; qu&aacute; tr&igrave;nh mồi nước trước khi vận h&agrave;nh m&aacute;y bơm.</p>\r\n\r\n<p>Bơm phun : &nbsp;Nguy&ecirc;n tắc hoạt động của loại bơm n&agrave;y l&agrave; dựa v&agrave;o kh&iacute; n&eacute;n hoặc bơm phụ gi&uacute;p tạo được ra sự dịch chuyển l&uacute;c đầu trong th&acirc;n bơm. Sự dịch chuyển n&agrave;y sẽ tạo được một v&ugrave;ng c&oacute; &aacute;p suất thấp ph&iacute;a sau th&acirc;n bơm khiến chất lỏng được vận chuyển.</p>\r\n\r\n<p>Bơm piston : L&agrave; loại bơm được sử dụng nhiều trong sản xuất v&igrave; hiệu quả m&agrave; ch&uacute;ng mang lại l&agrave; tương đối cao. Nguy&ecirc;n tắc hoạt động l&agrave; dựa v&agrave;o h&agrave;nh tr&igrave;nh của xy-lanh trong piston để vận chuyển nước.</p>\r\n', '1439390577tintuc2.jpg', 2, 1, '2015-08-12 16:42:57', NULL),
(3, 'Hướng dẫn pha xăng nhớt cho máy cưa xích Husqvarna', 'huong-dan-pha-xang-nhot-cho-may-cua-xich-husqvarna', 'Nhằm mục đích hướng dẫn pha xăng nhớt cho máy cưa xích nói chung và máy cưa xích Husqvarna nói riêng, bài viết rất hữu ích cho những người sữ dụng. Vì vậy mong quý khách đọc hết hướng dẫn và hãy chắc chắn rằng thông tin trước khi thực hiện công việc ', '<p>Nhằm mục đ&iacute;ch hướng dẫn pha xăng nhớt cho m&aacute;y cưa x&iacute;ch n&oacute;i chung v&agrave; m&aacute;y cưa x&iacute;ch Husqvarna n&oacute;i ri&ecirc;ng, b&agrave;i viết rất hữu &iacute;ch cho những người sữ dụng. V&igrave; vậy mong qu&yacute; kh&aacute;ch đọc hết hướng dẫn v&agrave; h&atilde;y chắc chắn rằng th&ocirc;ng tin trước khi thực hiện c&ocirc;ng việc n&agrave;y để đảm bảo an to&agrave;n cho người, cho m&aacute;y v&agrave; tiết kiệm xăng v&agrave; nhớt hơn. N&acirc;ng cao hiệu quả c&ocirc;ng việc.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_8.jpg" style="border:0px; height:376px; margin:0px; padding:0px; width:695px" /></p>\r\n\r\n<p><strong>Lưu &yacute;!</strong>&nbsp;Thiết bị n&agrave;y được lắp động cơ hai th&igrave; v&agrave; phải sử dụng xăng pha với dầu hai th&igrave;. Cần phải đong ch&iacute;nh x&aacute;c lượng dầu để pha nhằm bảo đảm c&oacute; được hỗn hợp y&ecirc;u cầu. Khi pha trộn những lượng nhỏ nhi&ecirc;n liệu, những bất ch&iacute;nh x&aacute;c d&ugrave; nhỏ vẫn ảnh hưởng rất nhiều đến tỷ lệ pha.</p>\r\n\r\n<p><strong><em>CẢNH B&Aacute;O! Khi chiết r&oacute;t nhi&ecirc;n liệu phải bảo đảm ở nơi đủ th&ocirc;ng tho&aacute;ng.</em></strong></p>\r\n\r\n<p><strong>Xăng:&nbsp;</strong></p>\r\n\r\n<p>&bull; D&ugrave;ng xăng chất lượng cao c&oacute; hoặc kh&ocirc;ng c&oacute; ch&igrave;.<br />\r\n&bull; CẨN THẬN! Động cơ được trang bị c&aacute;c bộ chuyển đổi x&uacute;c t&aacute;c phải chạy bằng hỗn hợp nhi&ecirc;n liệu kh&ocirc;ng ch&igrave;.<br />\r\n&bull; Xăng c&oacute; ch&igrave; sẽ ph&aacute; bộ chuyển đổi x&uacute;c t&aacute;c l&agrave;m cho n&oacute; mất t&aacute;c dụng. Nắp nhi&ecirc;n liệu m&agrave;u xanh tr&ecirc;n cưa được lắp bộ chuyển đổi x&uacute;c t&aacute;c c&oacute; nghĩa l&agrave; chỉ được sử dụng xăng kh&ocirc;ng c&oacute; ch&igrave;.<br />\r\n&bull; Độ ốc-tan thấp nhất m&agrave; ch&uacute;ng t&ocirc;i khuyến nghị l&agrave; 90 (RON). Nếu bạn chạy m&aacute;y với nhi&ecirc;n liệu c&oacute; độ ốc-tan thấp hơn 90, th&igrave; hiện tượng gọi l&agrave; k&iacute;ch nổ sẽ xảy ra. N&oacute; sẽ l&agrave;m tăng cao nhiệt độ của động cơ, tải trọng tr&ecirc;n ổ trục gia tăng, dẫn<br />\r\ntới hư hỏng nặng động cơ.<br />\r\n&bull; Khi thao t&aacute;c với tốc độ cao li&ecirc;n tục (v&iacute; dụ khi m&eacute; c&agrave;nh c&acirc;y), n&ecirc;n sử dụng nhi&ecirc;n liệu c&oacute; độ ốc-tan cao hơn.</p>\r\n\r\n<p><strong>Nhi&ecirc;n liệu kh&ocirc;ng l&agrave;m hại m&ocirc;i trường</strong></p>\r\n\r\n<p>HUSQVARNA khuyến nghị sử dụng nhi&ecirc;n liệu alkylat, như Aspen hai th&igrave; hoặc nhi&ecirc;n liệu kh&ocirc;ng l&agrave;m hại m&ocirc;i trường d&agrave;nh cho động cơ 4 th&igrave; pha với dầu 2 th&igrave; như dưới đ&acirc;y. Lưu &yacute; c&oacute; thể cần chỉnh lại chế h&ograve;a kh&iacute; khi thay chủng loại nhi&ecirc;n liệu (xem chỉ dẫn dưới ti&ecirc;u đề Chế h&ograve;a kh&iacute;).<br />\r\nChạy r&agrave; m&aacute;y (roda m&aacute;y)<br />\r\nTr&aacute;nh vận h&agrave;nh với tốc độ qu&aacute; cao với thời gian d&agrave;i trong 10 giờ đầu.</p>\r\n\r\n<p><strong>Dầu hai th&igrave; Husqvarna</strong></p>\r\n\r\n<p>&bull; Để đạt kết quả v&agrave; năng suất tốt nhất, h&atilde;y sử dụng dầu động cơ hai th&igrave; HUSQVARNA, được điều chế đặc biệt cho c&aacute;c động cơ hai th&igrave; l&agrave;m<br />\r\nm&aacute;t bằng kh&ocirc;ng kh&iacute;.<br />\r\n&bull; Kh&ocirc;ng bao giờ được sử dụng dầu hai th&igrave; d&agrave;nh cho c&aacute;c động cơ l&agrave;m m&aacute;t bằng nước, c&oacute; khi gọi l&agrave; dầu động cơ thủy (chuẩn TCW).<br />\r\n&bull; Kh&ocirc;ng bao giờ được d&ugrave;ng dầu d&agrave;nh cho động cơ 4 th&igrave;.<br />\r\n&bull; Chất lượng dầu k&eacute;m v&agrave;/hoặc khi tỷ lệ dầu/nhi&ecirc;n liệu qu&aacute; cao c&oacute; thể l&agrave;m hại v&agrave; giảm tuổi thọ c&aacute;c bộ chuyển đổi bằng x&uacute;c t&aacute;c.</p>\r\n', '1439390644tintuc3.jpg', 3, 1, '2015-08-12 16:44:04', NULL),
(4, 'Lựa chọn phương pháp bảo trì thiết bị công nghiệp', 'lua-chon-phuong-phap-bao-tri-thiet-bi-cong-nghiep', 'Mọi người trong tổ chức từ người quản lý cao nhất đến công nhân đang làm việc tại nhà máy đều phải biết chính sách bảo trì thiết bị công nghiệp. Người sản xuất và người bảo trì phải có thể phân tích những vấn đề ba', '<div>&nbsp;</div>\r\n\r\n<div>\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_6.PNG" style="border:0px; height:285px; margin:0px; padding:0px; width:447px" /></p>\r\n\r\n<p><strong>Kh&ocirc;ng n&ecirc;n ch&acirc;́p nh&acirc;̣n và phải tránh ngừng máy kh&ocirc;ng k&ecirc;́ hoạch.</strong><br />\r\nMọi người trong t&ocirc;̉ chức từ người quản lý cao nh&acirc;́t đ&ecirc;́n c&ocirc;ng nh&acirc;n đang làm vi&ecirc;̣c tại nhà máy đ&ecirc;̀u phải bi&ecirc;́t chính sách bảo trì thiết bị c&ocirc;ng nghiệp. Người sản xu&acirc;́t và người bảo trì phải có th&ecirc;̉ ph&acirc;n tích những v&acirc;́n đ&ecirc;̀ bảo trì nảy sinh. N&ecirc;́u m&ocirc;̣t sai sót xu&acirc;́t hi&ecirc;̣n, người v&acirc;̣n hành, người bảo trì hay b&acirc;́t kỳ người nào khác phải bi&ecirc;́t đặt c&acirc;u hỏi: &quot;có th&ecirc;̉ tránh sai sót này xảy ra m&ocirc;̣t l&acirc;̀n nữa bằng cách sửa đ&ocirc;̉i, thi&ecirc;́t k&ecirc;́ lại hoặc b&acirc;́t kỳ giải pháp bảo trì thiết bị c&ocirc;ng nghiệp nào khác kh&ocirc;ng?&quot;. Có th&ecirc;̉ lựa chọn giải pháp bảo trì bằng cách n&ecirc;u m&ocirc;̣t loạt c&acirc;u hỏi và trả lời theo trình tự sau đ&acirc;y:<br />\r\n<strong>Có th&ecirc;̉ thi&ecirc;́t k&ecirc;́ lại đ&ecirc;̉ tránh hư hỏng hay kh&ocirc;ng?</strong><br />\r\nN&ecirc;́u kh&ocirc;ng th&ecirc;̉ thi&ecirc;́t k&ecirc;́ lại thì bước k&ecirc;́ ti&ecirc;́p trong chi&ecirc;́n lược bảo trì là phải c&ocirc;́ gắng kéo dài tu&ocirc;̉i thọ của chi ti&ecirc;́t thiết bị c&ocirc;ng nghiệp.<br />\r\n<strong>Có th&ecirc;̉ áp dụng giám sát tình trạng thi&ecirc;́t bị trong quá trình v&acirc;̣n hành kh&ocirc;ng?</strong><br />\r\nN&ecirc;́u kh&ocirc;ng th&ecirc;̉ kéo dài tu&ocirc;̉i tho của chi ti&ecirc;́t thì bước k&ecirc;́ ti&ecirc;́p là phải c&ocirc;́ gắng áp dụng giám sát tình trạng thi&ecirc;́t bị trong su&ocirc;́t thời gian v&acirc;̣n hành đ&ecirc;̉ sớm tìm ra những sai sót trong thời kỳ phát tri&ecirc;̉n hư hỏng và có th&ecirc;̉ l&acirc;̣p k&ecirc;́ hoạch sửa chữa đ&ecirc;̉ giảm h&acirc;̣u quả hư hỏng.<br />\r\n<strong>Có th&ecirc;̉ giám sát tình trạng thi&ecirc;́t bị trong khi ngừng máy có k&ecirc;́ hoạch kh&ocirc;ng?</strong><br />\r\nĐ&ocirc;i khi giám sát tình trạng kh&ocirc;ng th&ecirc;̉ thực hi&ecirc;̣n được trong quá trình v&acirc;̣n hành.<br />\r\n<strong>Có th&ecirc;̉ áp dụng thay th&ecirc;́ định kỳ được kh&ocirc;ng?</strong><br />\r\nN&ecirc;́u kh&ocirc;ng th&ecirc;̉ áp dụng giám sát tình trạng thiết bị c&ocirc;ng nghiệp do kh&ocirc;ng có hư hỏng nào phát tri&ecirc;̉n thì phải nghĩ đ&ecirc;́n thay th&ecirc;́ định kỳ.<br />\r\n<strong>Có th&ecirc;̉ áp dụng dự phòng được kh&ocirc;ng?</strong><br />\r\nN&ecirc;́u kh&ocirc;ng có giải pháp bảo trì nào n&ecirc;u tr&ecirc;n được áp dụng thì giải pháp dự phòng phải được xem xét trước khi quy&ecirc;́t định đi đ&ecirc;́n giải pháp bảo trì khi đã bị ngừng máy. Giải pháp này phải xem xét c&acirc;̉n th&acirc;̣n v&ecirc;̀ mặt kinh t&ecirc;́.<br />\r\n<strong>V&acirc;̣n hành đ&ecirc;́n khi hư hỏng</strong><br />\r\nChỉ cho phép sử dụng giải pháp bảo trì này khi các giải pháp bảo trì khác kh&ocirc;ng th&ecirc;̉ áp dụng được. Ví dụ khi hư hỏng mang tính ng&acirc;̃u nhi&ecirc;n và kh&ocirc;ng có thời gian phát tri&ecirc;̉n hư hỏng. Tuy nhi&ecirc;n thường thì phải xem xét h&acirc;̣u quả kinh t&ecirc;́ phát sinh. Đ&ocirc;i khi giải pháp bảo trì này là kinh t&ecirc;́ nh&acirc;́t do giá thi&ecirc;́t bị th&acirc;́p và kh&ocirc;ng tác đ&ocirc;̣ng đ&ecirc;́n t&ocirc;̉n th&acirc;́t sản xu&acirc;́t.</p>\r\n</div>\r\n', '1439390704tintuc4.jpg', 4, 1, '2015-08-12 16:45:04', NULL),
(5, 'Nông dân Việt Nam sáng chế thành công máy trộn bê tông đa năng', 'nong-dan-viet-nam-sang-che-thanh-cong-may-tron-be-tong-da-nang', 'Sau nhiều năm nghiên cứu, ông Trần Giỏi, chủ cơ sở cơ khí Quỳnh Phong ở cụm công nghiệp Quán Lát, xã Đức Chánh, huyện Mộ Đức đã cải tiến thành công máy trộn, đổ bê tông làm đường giao thông nông thôn và phục vụ cho những công trình xây dựng.', '<div>\r\n<p>Sau nhiều năm nghi&ecirc;n cứu, &ocirc;ng Trần Giỏi, chủ cơ sở cơ kh&iacute; Quỳnh Phong ở cụm c&ocirc;ng nghiệp Qu&aacute;n L&aacute;t, x&atilde; Đức Ch&aacute;nh, huyện Mộ Đức đ&atilde; cải tiến th&agrave;nh c&ocirc;ng m&aacute;y trộn, đổ b&ecirc; t&ocirc;ng l&agrave;m đường giao th&ocirc;ng n&ocirc;ng th&ocirc;n v&agrave; phục vụ cho những c&ocirc;ng tr&igrave;nh x&acirc;y dựng.</p>\r\n\r\n<p>Chiếc m&aacute;y n&agrave;y năng suất gấp 3 lần may tron be tong truyền thống v&agrave; giảm số nh&acirc;n c&ocirc;ng lao động tại c&ocirc;ng trường.</p>\r\n\r\n<p>&nbsp;Đọ sức&rdquo; với m&aacute;y trộn b&ecirc; t&ocirc;ng truyền thống<br />\r\n&Ocirc;ng Giỏi c&oacute; một xưởng cơ kh&iacute; tr&ecirc;n Đắc Lắc n&ecirc;n thường xuy&ecirc;n đi lại giữa Đắc Lắc v&agrave; Quảng Ng&atilde;i. Tr&ecirc;n đường đi, &ocirc;ng quan s&aacute;t thấy tại những c&ocirc;ng tr&igrave;nh l&agrave;m đường giao th&ocirc;ng v&agrave; những c&ocirc;ng tr&igrave;nh x&acirc;y dựng ở c&aacute;c địa phương, m&aacute;y trộn, đổ b&ecirc; t&ocirc;ng đều giống nhau một kiểu. Những c&acirc;u hỏi bắt đầu xuất hiện trong đầu &ocirc;ng Giỏi, m&aacute;y trộn đổ b&ecirc; t&ocirc;ng c&oacute; nhược điểm g&igrave;, c&oacute; thể cải tiến để tăng năng suất được kh&ocirc;ng...</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_5.jpeg" style="border:0px; height:368px; margin:0px; padding:0px; width:400px" /></p>\r\n\r\n<p>Biến &yacute; tưởng th&agrave;nh hiện thực, &ocirc;ng Giỏi c&ugrave;ng với những cộng sự tại xưởng cơ kh&iacute; Quỳnh Phong miệt m&agrave;i chế tạo ra chiếc m&aacute;y trộn đổ b&ecirc; t&ocirc;ng thế hệ mới. Cuối năm 2009, chiếc m&aacute;y đầu ti&ecirc;n xuất xưởng, được đặt t&ecirc;n l&agrave; QP &ndash; 09 (Quỳnh Phong &ndash; 2009).</p>\r\n\r\n<p>Trong gần một năm qua, m&aacute;y QP &ndash; 09 đ&atilde; tham gia thi c&ocirc;ng tại c&aacute;c c&ocirc;ng trường huyện Mộ Đức, B&igrave;nh Sơn, th&agrave;nh phố Quảng Ng&atilde;i với khối lượng gần 10.000m3 b&ecirc; t&ocirc;ng, thi c&ocirc;ng hơn 10 km đường giao th&ocirc;ng n&ocirc;ng th&ocirc;n.</p>\r\n\r\n<p>Th&ugrave;ng trộn được lắp với m&aacute;y k&eacute;o Mitsubishi của Nhật n&ecirc;n c&oacute; t&iacute;nh cơ động khi di chuyển v&agrave;o những đường c&oacute; địa h&igrave;nh xấu, đường dốc, trơn trượt. Nhờ c&oacute; trục lắp từ th&ugrave;ng trộn được nối v&agrave;o hộp số động cơ của đầu k&eacute;o, người điều khiển c&oacute; thể điều chỉnh tốc độ trộn tại vị tr&iacute; g&agrave;i số, n&ecirc;n m&aacute;y vừa di chuyển tiến, l&ugrave;i, vừa trộn được b&ecirc; t&ocirc;ng từ b&atilde;i vật liệu đến nơi đổ b&ecirc; t&ocirc;ng, giảm đ&aacute;ng kể thời gian chờ đợi tại c&ocirc;ng trường.</p>\r\n\r\n<p>M&aacute;y c&oacute; kết cấu nhỏ gọn, d&agrave;i 4,5m, bề ngang 1,5m, cao 1,2m, chiếm &iacute;t diện t&iacute;ch tr&ecirc;n mặt đường, n&ecirc;n khi thi c&ocirc;ng, kh&ocirc;ng g&acirc;y cản trở giao th&ocirc;ng. Với kết cấu b&agrave;n tay trộn kiểu ly t&acirc;m đ&atilde; gi&uacute;p b&ecirc; t&ocirc;ng được trộn đều v&agrave; thời gian trộn của m&aacute;y n&agrave;y nhanh gấp 3 lần m&aacute;y th&ocirc;ng thường.</p>\r\n\r\n<p>&Ocirc;ng Giỏi cho biết: Chiếc m&aacute;y trộn b&ecirc; t&ocirc;ng n&agrave;y dễ chế tạo v&igrave; phụ t&ugrave;ng dễ kiếm, chủ yếu l&agrave; sử dụng từ m&aacute;y m&oacute;c, &ocirc; t&ocirc; cũ, rồi gia c&ocirc;ng phục hồi. Hiện nay cơ sở Quỳnh Phong của &ocirc;ng Giỏi chưa sản xuất đại tr&agrave; loại m&aacute;y n&agrave;y, n&ecirc;n gi&aacute; th&agrave;nh hiện tại của một th&ugrave;ng trộn khoảng 40 triệu đồng. Theo ước t&iacute;nh của &ocirc;ng Giỏi, doanh thu từ chiếc m&aacute;y n&agrave;y hơn 1 tỷ đồng mỗi năm, tạo việc l&agrave;m cho 10 lao động.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_6.jpeg" style="border:0px; height:241px; margin:0px; padding:0px; width:400px" /></p>\r\n\r\n<p>Kh&ocirc;ng dừng lại ở việc cải tiến n&agrave;y, &ocirc;ng Giỏi đang nghi&ecirc;n cứu kh&acirc;u đổ vật liệu bằng m&aacute;y x&uacute;c hoặc bằng m&aacute;ng tời, n&acirc;ng c&ocirc;ng suất của m&aacute;y l&ecirc;n gấp nhiều lần phi&ecirc;n bản của m&aacute;y hiện nay.</p>\r\n\r\n<p>Từ &yacute; tưởng đến c&ocirc;ng trường</p>\r\n\r\n<p>Năm 2009, sau khi c&oacute; &yacute; tưởng cải tiến m&aacute;y trộn b&ecirc; t&ocirc;ng, &ocirc;ng Giỏi l&agrave;m những thủ tục đăng k&iacute; cần thiết đến c&aacute;c cấp thẩm quyền, đồng thời l&agrave;m thủ tục xin hỗ trợ kinh ph&iacute; khuyến c&ocirc;ng của tỉnh. Trung t&acirc;m khuyến c&ocirc;ng v&agrave; tư vấn ph&aacute;t triển c&ocirc;ng nghiệp Quảng Ng&atilde;i đ&atilde; hỗ trợ kinh ph&iacute; 80 triệu đồng cho cơ sở Quỳnh Phong triển khai đề &aacute;n chế tạo m&aacute;y.</p>\r\n\r\n<p>Hiện nay cơ sở Quỳnh Phong đ&atilde; sản xuất được 3 chiếc m&aacute;y QP &ndash; 09. Ba chiếc m&aacute;y n&agrave;y ra mắt tại những c&ocirc;ng tr&igrave;nh l&agrave;m đường giao th&ocirc;ng n&ocirc;ng th&ocirc;n trong tỉnh được người d&acirc;n đ&aacute;nh gi&aacute; cao.<br />\r\n&nbsp;<br />\r\n&Ocirc;ng Phạm Thanh T&ugrave;ng - Ph&oacute; Chủ tịch UBND huyện Mộ Đức cho biết: Chiếc m&aacute;y QP &ndash; 09 l&agrave;m đường nhanh hơn, chất lượng đảm bảo v&agrave; cũng giải ph&oacute;ng được nhiều sức lao động ch&acirc;n tay.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_7.jpeg" style="border:0px; height:266px; margin:0px; padding:0px; width:400px" /></p>\r\n\r\n<p>M&aacute;y QP &ndash; 09 đang thi c&ocirc;ng đổ nền s&acirc;n bến xe Ch&iacute;n Nghĩa. Anh Trần Thịnh, một người 7 năm l&agrave;m thợ hồ, qu&ecirc; ở x&atilde; Đức Hiệp, huyện Mộ Đức l&agrave;m việc tại c&ocirc;ng tr&igrave;nh n&agrave;y nhận x&eacute;t: &ldquo;M&aacute;y trộn b&ecirc; t&ocirc;ng truyền thống một ng&agrave;y l&agrave;m khoảng 10 khối, mỗi lần trộn được nửa bao xi măng, c&ograve;n m&aacute;y trộn đổ b&ecirc; t&ocirc;ng QP -09 mỗi ng&agrave;y trộn được khoảng 40 khối, mỗi lần trộn được từ 1 &ndash; 2 bao xi măng.</p>\r\n\r\n<p>Hiện cơ sở Quỳnh Phong đang đầu tư để sản xuất h&agrave;ng loạt loại m&aacute;y n&agrave;y cung ứng cho nhu cầu của thị trường.</p>\r\n</div>\r\n', '14393907812014121784516110.130.104.jpg', 5, 1, '2015-08-12 16:46:21', NULL),
(6, 'Tự động hóa: Triển lãm các sản phẩm thông minh của Nhật Bản', 'tu-dong-hoa-trien-lam-cac-san-pham-thong-minh-cua-nhat-ban', 'Tại triển lãm Eco Product được tổ chức tại Tokyo tuần qua, các công ty công nghệ hàng đầu Nhật Bản đã giới thiệu nhiều sản phẩm thông minh, đem lại tiện ích cho cuộc sống và điều quan trọng là mang tính thân thiện với môi trường.Sagawa sử dụng xe đạp', '<div>\r\n<p><strong>Tại triển l&atilde;m Eco Product được tổ chức tại Tokyo tuần qua, c&aacute;c c&ocirc;ng ty c&ocirc;ng nghệ h&agrave;ng đầu Nhật Bản đ&atilde; giới thiệu nhiều sản phẩm th&ocirc;ng minh, đem lại tiện &iacute;ch cho cuộc sống v&agrave; điều quan trọng l&agrave; mang t&iacute;nh th&acirc;n thiện với m&ocirc;i trường.</strong></p>\r\n\r\n<p style="text-align:center"><strong><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_1.jpg" style="border:0px; height:450px; margin:0px; padding:0px; width:600px" /></strong></p>\r\n\r\n<p style="text-align:center">Sagawa sử dụng xe đạp điện v&agrave; xe k&eacute;o chở h&agrave;ng để bảo vệ m&ocirc;i trường của cố đ&ocirc; Kyoto.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_4.jpg" style="border:0px; height:450px; margin:0px; padding:0px; width:600px" /></p>\r\n\r\n<p>C&ocirc;ng ty b&aacute;n lẻ h&agrave;ng đầu AEON đ&atilde; giới thiệu hoạt động trồng rừng được khởi xướng từ đầu những năm 1990 tại khu vực ch&acirc;u &Aacute; Th&aacute;i B&igrave;nh dương. AEON đ&atilde; trồng hơn 10 triệu c&acirc;y xanh ở L&agrave;o, Th&aacute;i Lan, Malaysia, Indonesia, Việt Nam, Campuchia, Trung Quốc, Australia v&agrave; Nhật Bản, g&oacute;p phần đem lại mảng xanh cho c&aacute;c khu vực tr&ecirc;n.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_2.jpg" style="border:0px; height:800px; margin:0px; padding:0px; width:600px" /></p>\r\n\r\n<p>C&ocirc;ng ty Daiwahouse triển l&atilde;m c&aacute;c bộ quần &aacute;o r&ocirc; bốt v&agrave; th&uacute; r&ocirc; bốt hỗ trợ người gi&agrave;C&ocirc;ng ty Daiwahouse triển l&atilde;m c&aacute;c bộ quần &aacute;o r&ocirc; bốt v&agrave; th&uacute; r&ocirc; bốt hỗ trợ người gi&agrave;</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://media.bizwebmedia.net/sites/95138/data/Upload/2014/12/0_3.jpg" style="border:0px; height:450px; margin:0px; padding:0px; width:600px" /></p>\r\n\r\n<p>Fujitsu đ&atilde; triển lam hệ thống quan s&aacute;t động đất v&agrave; s&oacute;ng thần ở dưới đ&aacute;y biển sử dụng cảm biến c&aacute;p quang. Fujitsu đ&atilde; c&oacute; kinh nghiệm trong việc đặt c&aacute;p biển suốt 44 năm qua. Hệ thống mới đ&atilde; được Viện nghi&ecirc;n cứu động đất ở Đại học Tokyo chấp thuận v&agrave; sẽ được đắt ở đ&aacute;y biển tại v&ugrave;ng biển ngo&agrave;i khơi Sanriku, nơi đ&atilde; bị động đất s&oacute;ng thần lớn t&agrave;n ph&aacute;.</p>\r\n</div>\r\n', '14393908422014121783821364.130.104.jpg', 6, 1, '2015-08-12 16:47:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tuvan`
--

CREATE TABLE IF NOT EXISTS `tuvan` (
`id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tuvan`
--

INSERT INTO `tuvan` (`id`, `name`, `alias`, `description`, `content`, `image`, `order`, `status`, `created`) VALUES
(1, 'Hoa mai Bình Định', 'hoa-mai-binh-dinh', '', '<p>Hoa mai b&igrave;nh định</p>\r\n', '1403765873300x215-7.png', NULL, 1, '2014-06-26 13:58:07'),
(2, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765906300x215-7.png', NULL, 1, '2014-06-26 13:58:26'),
(3, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765977hoamai.jpg', NULL, 1, '2014-06-26 13:59:37'),
(4, 'Hoa mai Bình Định 2', 'hoa-mai-binh-dinh-2', '', '<p>Hoa mai b&igrave;nh định 2</p>\r\n', '1403765996300x215-7.png', NULL, 1, '2014-06-26 13:59:56'),
(5, 'b', 'b', 'a', '<p>a</p>\r\n', '1403766007hoamai.jpg', 3, 1, '2014-06-26 14:00:07'),
(6, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766016300x215-7.png', 1, 1, '2014-06-26 14:00:16'),
(7, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766031hoamai.jpg', 1, 1, '2014-06-26 14:00:31'),
(8, 'test 3', 'test-3', 'test 3', '<p>test 3</p>\r\n', '1403766043300x215-7.png', 1, 1, '2014-06-26 14:00:43'),
(9, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766058hoamai.jpg', NULL, 1, '2014-06-26 14:00:58'),
(10, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766070300x215-7.png', NULL, 1, '2014-06-26 14:01:10'),
(11, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766079hoamai.jpg', NULL, 1, '2014-06-26 14:01:19'),
(12, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766088300x215-7.png', NULL, 1, '2014-06-26 14:01:28'),
(13, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766099300x215-7.png', NULL, 1, '2014-06-26 14:01:39'),
(15, 'teaasdfasdf', 'teaasdfasdf', 'asdfasdf', '<p>asdf</p>\r\n', '1403766113300x215-7.png', NULL, 1, '2014-06-26 14:01:53'),
(16, 'Tam', 'tam', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1403766124hoamai.jpg', NULL, 1, '2014-06-26 14:02:11'),
(17, 'Tam adf', 'tam-adf', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1403766143300x215-7.png', NULL, 1, '2014-06-26 17:04:03'),
(18, 'test 1', 'test-1', 'asdf', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/image1.jpeg" style="height:177px; width:284px" /></p>\r\n', '1403766152hoamai.jpg', NULL, 1, '2014-06-26 14:02:32'),
(19, 'Tu van hoa mai', 'tu-van-hoa-mai', 'tu van hoa mai', '<p>Tu van hoa mai</p>\r\n', '1403841463hoamai.jpg', 1, 1, '2014-06-27 10:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `yii_app_cache`
--

CREATE TABLE IF NOT EXISTS `yii_app_cache` (
  `id` char(128) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `value` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yii_app_cache`
--

INSERT INTO `yii_app_cache` (`id`, `expire`, `value`) VALUES
('c129ca845132921fb63fe29af6e8c22e', 0, 0x613a323a7b693a303b733a38383a22613a313a7b733a33343a225969692e4353656375726974794d616e616765722e76616c69646174696f6e6b6579223b733a33323a223339666236323332343562323830636431626233326635663331363564303664223b7d223b693a313b4f3a32303a224346696c654361636865446570656e64656e6379223a363a7b733a383a2266696c654e616d65223b733a35363a222f4170706c69636174696f6e732f4d414d502f6874646f63732f686f616d61692f72756e74696d655f61646d696e2f73746174652e62696e223b733a31383a227265757365446570656e64656e7444617461223b623a303b733a32333a2200434361636865446570656e64656e6379005f68617368223b4e3b733a32333a2200434361636865446570656e64656e6379005f64617461223b693a313430323937343030333b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d7d),
('d0639903250639640a47e0cb7b97ac5b', 0, 0x613a323a7b693a303b613a323a7b693a303b613a31313a7b693a303b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a31303a22736974652f6c6f67696e223b733a31303a227265666572656e636573223b613a303a7b7d733a31323a22726f7574655061747465726e223b4e3b733a373a227061747465726e223b733a31323a222f5e6c6f67696e5c2f242f75223b733a383a2274656d706c617465223b733a353a226c6f67696e223b733a363a22706172616d73223b613a303a7b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a313b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a31323a227374617469632f696e646578223b733a31303a227265666572656e636573223b613a303a7b7d733a31323a22726f7574655061747465726e223b4e3b733a373a227061747465726e223b733a32333a222f5e735c2f283f503c766965773e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a383a22732f3c766965773e223b733a363a22706172616d73223b613a313a7b733a343a2276696577223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a323b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32353a226170695f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34353a222f5e6170695f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a3132333a222f5e6170695c2f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c70726d313e5c772b295c2f283f503c70726d323e5c772b295c2f283f503c70726d333e5c772b295c2f283f503c70726d343e5c772b295c2f283f503c70726d353e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a36303a226170692f3c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c70726d313e2f3c70726d323e2f3c70726d333e2f3c70726d343e2f3c70726d353e223b733a363a22706172616d73223b613a353a7b733a343a2270726d31223b733a333a225c772b223b733a343a2270726d32223b733a333a225c772b223b733a343a2270726d33223b733a333a225c772b223b733a343a2270726d34223b733a333a225c772b223b733a343a2270726d35223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a333b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32353a226170695f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34353a222f5e6170695f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a34383a222f5e6170695c2f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a32353a226170692f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a363a22706172616d73223b613a303a7b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a343b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32393a22676174657761795f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34393a222f5e676174657761795f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a35323a222f5e676174657761795c2f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a32393a22676174657761792f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a363a22706172616d73223b613a303a7b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a353b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a31333a227370656369616c2f696e646578223b733a31303a227265666572656e636573223b613a303a7b7d733a31323a22726f7574655061747465726e223b4e3b733a373a227061747465726e223b733a32393a222f5e7370656369616c5c2f283f503c766965773e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a31343a227370656369616c2f3c766965773e223b733a363a22706172616d73223b613a313a7b733a343a2276696577223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a363b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a3130333a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c70726d313e5c772b295c2f283f503c70726d323e5c772b295c2f283f503c70726d333e5c772b295c2f283f503c70726d343e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a34393a223c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c70726d313e2f3c70726d323e2f3c70726d333e2f3c70726d343e223b733a363a22706172616d73223b613a343a7b733a343a2270726d31223b733a333a225c772b223b733a343a2270726d32223b733a333a225c772b223b733a343a2270726d33223b733a333a225c772b223b733a343a2270726d34223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a373b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a38383a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c70726d313e5c772b295c2f283f503c70726d323e5c772b295c2f283f503c70726d333e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a34323a223c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c70726d313e2f3c70726d323e2f3c70726d333e223b733a363a22706172616d73223b613a333a7b733a343a2270726d31223b733a333a225c772b223b733a343a2270726d32223b733a333a225c772b223b733a343a2270726d33223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a383b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a37333a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c70726d313e5c772b295c2f283f503c70726d323e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a33353a223c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c70726d313e2f3c70726d323e223b733a363a22706172616d73223b613a323a7b733a343a2270726d31223b733a333a225c772b223b733a343a2270726d32223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a393b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a35363a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c69643e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a32363a223c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c69643e223b733a363a22706172616d73223b613a313a7b733a323a226964223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a31303b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a34333a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a363a22706172616d73223b613a303a7b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d7d693a313b733a33323a223538663630636433633666333031316435653138303835653266313764633161223b7d693a313b4e3b7d);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `advertise`
--
ALTER TABLE `advertise`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_pro`
--
ALTER TABLE `category_pro`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_cat`
--
ALTER TABLE `menu_cat`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions_admin`
--
ALTER TABLE `sessions_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static`
--
ALTER TABLE `static`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuvan`
--
ALTER TABLE `tuvan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yii_app_cache`
--
ALTER TABLE `yii_app_cache`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertise`
--
ALTER TABLE `advertise`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `category_pro`
--
ALTER TABLE `category_pro`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu_cat`
--
ALTER TABLE `menu_cat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `static`
--
ALTER TABLE `static`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tuvan`
--
ALTER TABLE `tuvan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
