-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th4 16, 2020 lúc 04:58 AM
-- Phiên bản máy phục vụ: 5.5.63-MariaDB
-- Phiên bản PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `avysub_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci,
  `admin_state` int(11) DEFAULT '1',
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '', '', '', 1, 1),
(2, 'hpt', 'hpt', '$2y$10$x9RWBVgCWSb9fkQGoh7ESOhYV1SnY5Fn5uwKUS9WfdUV1O4wvIe4a', '0973457689', 'ngobkanh@gmail.com', 'đây là tài khoản test', 1, 2),
(3, 'Trương Quang Tuấn', 'tuan', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '01669', 'tuan@gmail.com', 'test', 1, 2),
(4, NULL, NULL, '$2y$10$02.uMGB26ln3fgNk8MyarOf8hnuaF/hWlukTDKk99Kb9TluOarctq', NULL, NULL, NULL, 1, NULL),
(5, 'cms', 'cms', '$2y$10$FtjsErf.CxMYTl3zt3xOpuvWvPOAHfdCxo/9apf.tw8Aky/udFN6i', '135778', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_package`
--

CREATE TABLE `book_package` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `country` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `city` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `user_id` bigint(20) NOT NULL,
  `package_id` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `thang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `book_package`
--

INSERT INTO `book_package` (`id`, `name`, `email`, `address`, `country`, `city`, `user_id`, `package_id`, `state`, `thang`) VALUES
(1, 'Trương Quang Tuấn', 'tuan@gmail.com', 'Hà Nội', 'Viet Nam', 'Hà Nội', 13, 1, 1, 0),
(2, 'CF', 'cafelink.org@gmail.com', '09 Quan Nhân', 'Viet Nam', 'Quận Thanh Xuân', 15, 3, 1, 0),
(3, 'huy', 'huyennt62@wru.vn', '30', 'Afghanistan', 'aaaa', 16, 3, 1, 0),
(4, 'Trương Quang Tuấn', 'tuan@gmail.com', 'Hà Nội', 'Viet Nam', 'Hà Nội', 13, 2, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci,
  `note_buyer` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`) VALUES
(45, NULL, 'mkrnfu62crnut73tj9ip88k4c0', 4560000, NULL, '0000-00-00', NULL, NULL, 'hang', 'ngockhanh260614@gmail.com', '0973378669', 'Thanh Xuân, Thanh Xuân', 'đơn hàng hằng pt'),
(46, NULL, 'q6hilk5otma71lnmfk4jfe3bo0', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', 'test'),
(47, NULL, '8rg8qp2tib6bhq40siemsl0au1', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(48, NULL, 'p29v6fieekj8qc6r9iei8rkr84', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(49, NULL, 'gibro9jjp7o8r4dhlulet7t2c7', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(50, NULL, 'skgfhmeppmr97bion8qlhv2f24', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(51, NULL, '14sbco3nbkh6tss6mibu4c63i2', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(52, NULL, 'rdk00s074i1i4seat51nh109d6', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(53, NULL, 'ibcpu4cam64hh6jvvlqde89v90', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(54, NULL, 'r2hcu630iilbqufhd80udq4eh0', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(55, NULL, 'krsem1sgk8k9smbs1uinikks42', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(56, NULL, 'gjdbs5hhkns2vjb0juaf6g8i84', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(57, NULL, 'q4asrlk395bqes71q3m1dj7a53', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(58, NULL, 'mfuj32kovfsj87sum11433so15', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(59, NULL, 'o82tantv1gh498mq2giekk0mj1', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(60, NULL, 'vv3bvs960u0efu33mksbikfr02', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(61, NULL, '77v49he85i8nuuet5p2vt9g7r0', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(62, NULL, 'qs835th55ruep5q2f34fdimdg6', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(63, NULL, '0v3amtlih28cip0bskvi8tr2t7', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(64, NULL, 's34tnbg59l4psbpbc2jg4ru734', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(65, NULL, 'jna4k52dg50ce0e2euknmpsc53', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', ''),
(66, NULL, '1mrapf9122qb0n9gd32j94l6f5', 6000, NULL, '0000-00-00', NULL, NULL, 'adf', 'viethung@gmail.com', '01672523165', 'ha nội', 'ghi chú aaa'),
(67, NULL, 'sl6a5d5957d6n37tptrtp29mt4', 2000, NULL, '0000-00-00', NULL, NULL, 'bczcv', 'viethung@gmail.com', 'aasdfas', 'asfas', 'fdasdfasdf'),
(68, NULL, 'ape83laqntnptihbcmk5g0li26', 6000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '29-3'),
(69, NULL, 'lc7opealpf3l1a0m2utp3nr4g7', 2937600, NULL, '0000-00-00', NULL, NULL, 'adsfasdf', 'viethung@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'fasdfasdf'),
(70, NULL, '5h573qfbbcbulqljthad7scpd3', 935300, NULL, '0000-00-00', NULL, NULL, 'foreverlvoe', 'viethung95cute@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'ádfasdf'),
(71, NULL, 'rmqdkdafn2o9nl8pogdupruun2', 119000, NULL, '0000-00-00', NULL, NULL, 'Việt', 'viethung95cute@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'Test Thanh toán'),
(72, NULL, 'vtobgqa1tsu2n2ig0q2a65b141', 335000, NULL, '0000-00-00', NULL, NULL, 'Trần Bình', 'binhheco@yahoo.com', '0913033585', 'Tầng 9, Tòa nhà Lilama10, số 68 phố Tố Hữu, Nam Từ Liêm, hà Nội', 'vị coffe, giao hàng giờ hành chính'),
(73, NULL, 'g9hicrlb3g7425retmgq9ptst7', 335000, NULL, '0000-00-00', NULL, NULL, 'nguyễn thị cẩm Ly ', 'camly@iqvietnam.com.vn', '0914899392', '57 Láng Hạ ', ''),
(74, NULL, '0j59are43i6494jpu97e5b5mu3', 335000, NULL, '0000-00-00', NULL, NULL, '', '', '', '', ''),
(75, NULL, 'e36ue3ms509l2h9vu15h1rulu6', 335000, NULL, '0000-00-00', NULL, NULL, 'Nguyễn Việt Hưng', 'viethung95cute@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'adadf'),
(76, NULL, 'lmbaio732o4sp2ih3hks9df0b5', 335000, NULL, '0000-00-00', NULL, NULL, 'Nguyễn Việt Hưng', 'viethung95cute@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'Test Đặt đơn hàng ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(30, 28, 'mkrnfu62crnut73tj9ip88k4c0', 760000, 4, 3040000, NULL, 0, 0, '', '', 45),
(31, 34, 'mkrnfu62crnut73tj9ip88k4c0', 760000, 2, 1520000, NULL, 0, 0, '', '', 45),
(32, 28, 'q6hilk5otma71lnmfk4jfe3bo0', 760000, 1, 760000, NULL, 0, 0, '', '', 46),
(33, 29, '8rg8qp2tib6bhq40siemsl0au1', 760000, 1, 760000, NULL, 0, 0, '', '', 47),
(34, 27, 'p29v6fieekj8qc6r9iei8rkr84', 760000, 1, 760000, NULL, 0, 0, '', '', 48),
(35, 28, 'gibro9jjp7o8r4dhlulet7t2c7', 760000, 1, 760000, NULL, 0, 0, '', '', 49),
(36, 30, 'skgfhmeppmr97bion8qlhv2f24', 7600000, 1, 7600000, NULL, 0, 0, '', '', 50),
(37, 31, '14sbco3nbkh6tss6mibu4c63i2', 760000, 1, 760000, NULL, 0, 0, '', '', 51),
(38, 32, 'rdk00s074i1i4seat51nh109d6', 7600000, 1, 7600000, NULL, 0, 0, '', '', 52),
(39, 33, 'ibcpu4cam64hh6jvvlqde89v90', 760000, 1, 760000, NULL, 0, 0, '', '', 53),
(40, 35, 'r2hcu630iilbqufhd80udq4eh0', 760000, 1, 760000, NULL, 0, 0, '', '', 54),
(41, 36, 'krsem1sgk8k9smbs1uinikks42', 7600000, 1, 7600000, NULL, 0, 0, '', '', 55),
(42, 37, 'gjdbs5hhkns2vjb0juaf6g8i84', 135000, 1, 135000, NULL, 0, 0, '', '', 56),
(43, 37, 'q4asrlk395bqes71q3m1dj7a53', 135000, 1, 135000, NULL, 0, 0, '', '', 57),
(44, 27, 'mfuj32kovfsj87sum11433so15', 760000, 1, 760000, NULL, 0, 0, '', '', 58),
(45, 28, 'o82tantv1gh498mq2giekk0mj1', 760000, 1, 760000, NULL, 0, 0, '', '', 59),
(46, 29, 'vv3bvs960u0efu33mksbikfr02', 760000, 1, 760000, NULL, 0, 0, '', '', 60),
(47, 30, '77v49he85i8nuuet5p2vt9g7r0', 7600000, 1, 7600000, NULL, 0, 0, '', '', 61),
(48, 35, 'qs835th55ruep5q2f34fdimdg6', 760000, 1, 760000, NULL, 0, 0, '', '', 62),
(49, 36, '0v3amtlih28cip0bskvi8tr2t7', 7600000, 1, 7600000, NULL, 0, 0, '', '', 63),
(50, 37, 's34tnbg59l4psbpbc2jg4ru734', 135000, 1, 135000, NULL, 0, 0, '', '', 64),
(51, 27, 'jna4k52dg50ce0e2euknmpsc53', 760000, 1, 760000, NULL, 0, 0, '', '', 65),
(52, 27, '1mrapf9122qb0n9gd32j94l6f5', 2000, 3, 6000, NULL, 0, 0, '', '', 66),
(53, 27, 'sl6a5d5957d6n37tptrtp29mt4', 2000, 1, 2000, NULL, 0, 0, '', '', 67),
(54, 28, 'ape83laqntnptihbcmk5g0li26', 2000, 3, 6000, NULL, 0, 0, '', '', 68),
(55, 27, 'lc7opealpf3l1a0m2utp3nr4g7', 125100, 4, 500400, NULL, 0, 0, '', '', 69),
(56, 29, 'lc7opealpf3l1a0m2utp3nr4g7', 999000, 2, 1998000, NULL, 0, 0, '', '', 69),
(57, 38, 'lc7opealpf3l1a0m2utp3nr4g7', 219600, 2, 439200, NULL, 0, 0, '', '', 69),
(58, 35, '5h573qfbbcbulqljthad7scpd3', 199000, 2, 398000, NULL, 0, 0, '', '', 70),
(59, 36, '5h573qfbbcbulqljthad7scpd3', 179100, 1, 179100, NULL, 0, 0, '', '', 70),
(60, 37, '5h573qfbbcbulqljthad7scpd3', 179100, 2, 358200, NULL, 0, 0, '', '', 70),
(61, 28, 'rmqdkdafn2o9nl8pogdupruun2', 119000, 1, 119000, NULL, 0, 0, '', '', 71),
(62, 115, 'vtobgqa1tsu2n2ig0q2a65b141', 335000, 1, 335000, NULL, 0, 0, '', '', 72),
(63, 43, 'g9hicrlb3g7425retmgq9ptst7', 335000, 1, 335000, NULL, 0, 0, '', '', 73),
(64, 58, '0j59are43i6494jpu97e5b5mu3', 335000, 1, 335000, NULL, 0, 0, '', '', 74),
(65, 48, 'e36ue3ms509l2h9vu15h1rulu6', 335000, 1, 335000, NULL, 0, 0, '', '', 75),
(66, 45, 'lmbaio732o4sp2ih3hks9df0b5', 335000, 1, 335000, NULL, 0, 0, '', '', 76);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci,
  `web_meta` text COLLATE utf8_unicode_ci,
  `web_des` text COLLATE utf8_unicode_ci,
  `web_keyword` text COLLATE utf8_unicode_ci,
  `web_logo` text COLLATE utf8_unicode_ci,
  `web_hotline` text COLLATE utf8_unicode_ci,
  `web_phone` text COLLATE utf8_unicode_ci,
  `web_email` text COLLATE utf8_unicode_ci,
  `content_home1` text COLLATE utf8_unicode_ci,
  `content_home2` text COLLATE utf8_unicode_ci,
  `content_home3` text COLLATE utf8_unicode_ci,
  `content_home4` text COLLATE utf8_unicode_ci,
  `content_home5` text COLLATE utf8_unicode_ci,
  `content_home6` text COLLATE utf8_unicode_ci,
  `content_home7` text COLLATE utf8_unicode_ci,
  `content_home8` text COLLATE utf8_unicode_ci,
  `content_home9` text COLLATE utf8_unicode_ci,
  `content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci,
  `banner1` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `slideshow_home`, `banner1`, `banner2`) VALUES
(1, '100PIC', '', 'Cung cấp các thiết kế về banner, poster, flyer, menu, power point với hàng ngàn sản phẩm đa dạng ( ghi tiếng anh dùm nhé )', '', 'anh Vỹ logo (1).png', '', '', '', 'Is an organization providing banner, poster, flyer, menu, power point designs with thousands of diverse products', 'tvposvn@gmail.com', '', '', '', '', '<h4 class=\"uni-uppercase\">sales department</h4>                \r\n <p>Mon - sat: 8:00 am - 17:00 pm</p>                \r\n <p>Sunday is closed</p>', 'Người nhận: Công ty Cổ Phần Chứng Khoán Đà Nẵng\r\nSố tài khoản nhận: 5611.0000.867\r\nTại ngân hàng BIDV – Chi nhánh Đà Nẵng\r\nNội dung: Chuyen tien 024C00XXXX, [Tên khách hàng] tai DNSC', '<iframe src=\'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15674.988302301215!2d106.60684216757784!3d10.830657602123736!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752bce41e13229%3A0xe0ee4f2d36b1ea3f!2zVMOibiBUaOG7m2kgTmjhuqV0LCBRdeG6rW4gMTIsIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1522615086521\' width=\'600\' height=\'450\' frameborder=\'0\' style=\'border:0\' allowfullscreen></iframe>', '', 'https://www.facebook.com/congdongvnexpress/', 'https://plus.google.com/discover', 'twitter', '<iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785448771!2d105.80194413492788!3d21.02273601629448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m', 'https://www.youtube.com/embed/vCIc1g_4JWM', 'anh Vỹ logo (1).png', '[\"{\\\"image\\\":\\\"20200117092020.jpg\\\"}\",\"{\\\"image\\\":\\\"city_lights_lights_road_cars_buildings_58573_1366x768.jpg\\\"}\"]', 'momo-qr.jpg', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci,
  `lang_web_meta` text COLLATE utf8_unicode_ci,
  `lang_web_des` text COLLATE utf8_unicode_ci,
  `lang_web_keyword` text COLLATE utf8_unicode_ci,
  `lang_web_hotline` text COLLATE utf8_unicode_ci,
  `lang_web_phone` text COLLATE utf8_unicode_ci,
  `lang_web_email` text COLLATE utf8_unicode_ci,
  `lang_content_home1` text COLLATE utf8_unicode_ci,
  `lang_content_home2` text COLLATE utf8_unicode_ci,
  `lang_content_home3` text COLLATE utf8_unicode_ci,
  `lang_content_home4` text COLLATE utf8_unicode_ci,
  `lang_content_home5` text COLLATE utf8_unicode_ci,
  `lang_content_home6` text COLLATE utf8_unicode_ci,
  `lang_content_home7` text COLLATE utf8_unicode_ci,
  `lang_content_home8` text COLLATE utf8_unicode_ci,
  `lang_content_home9` text COLLATE utf8_unicode_ci,
  `lang_content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `edit_state`) VALUES
(1, 1, 'vn', '100PIC', '', 'Cung cấp các thiết kế về banner, poster, flyer, menu, power point với hàng ngàn sản phẩm đa dạng ( ghi tiếng anh dùm nhé )', '', '', '', '', 'Is an organization providing banner, poster, flyer, menu, power point designs with thousands of diverse products', 'tvposvn@gmail.com', '', '', '', '', '<h4 class=\"uni-uppercase\">sales department</h4>                \r\n <p>Mon - sat: 8:00 am - 17:00 pm</p>                \r\n <p>Sunday is closed</p>', 'Người nhận: Công ty Cổ Phần Chứng Khoán Đà Nẵng\r\nSố tài khoản nhận: 5611.0000.867\r\nTại ngân hàng BIDV – Chi nhánh Đà Nẵng\r\nNội dung: Chuyen tien 024C00XXXX, [Tên khách hàng] tai DNSC', '<iframe src=\'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15674.988302301215!2d106.60684216757784!3d10.830657602123736!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752bce41e13229%3A0xe0ee4f2d36b1ea3f!2zVMOibiBUaOG7m2kgTmjhuqV0LCBRdeG6rW4gMTIsIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1522615086521\' width=\'600\' height=\'450\' frameborder=\'0\' style=\'border:0\' allowfullscreen></iframe>', '', 'https://www.facebook.com/congdongvnexpress/', 'https://plus.google.com/discover', 'twitter', '<p><iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785448771!2d105.80194413492788!3d21.02273601629448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9bd9861ca1%3A0xe7887f7b72ca17a9!2zSGFub2ksIEhvw6BuIEtp4bq_bSwgSGFub2k!5e0!3m2!1sen!2s!4v1513235284242\" style=\"border:0\" width=\"600\"></iframe></p>\r\n', '<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/vCIc1g_4JWM\" width=\"560\"></iframe></p>\r\n', '', 1),
(2, 1, 'en', '', '', '', '', '', '', '', 'V-ONION Organic for your family', 'banhang@rio.net.vn', '+84 971 765 775', 'Số 12 ngõ 5, Tân Mỹ, P.Mỹ Đình 1, Q.Nam Từ Liêm, Hà Nội', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `country`
--

INSERT INTO `country` (`id`, `name`, `code`) VALUES
(1, 'Afghanistan', 'AF'),
(2, 'Åland Islands', 'AX'),
(3, 'Albania', 'AL'),
(4, 'Algeria', 'DZ'),
(5, 'American Samoa', 'AS'),
(6, 'AndorrA', 'AD'),
(7, 'Angola', 'AO'),
(8, 'Anguilla', 'AI'),
(9, 'Antarctica', 'AQ'),
(10, 'Antigua and Barbuda', 'AG'),
(11, 'Argentina', 'AR'),
(12, 'Armenia', 'AM'),
(13, 'Aruba', 'AW'),
(14, 'Australia', 'AU'),
(15, 'Austria', 'AT'),
(16, 'Azerbaijan', 'AZ'),
(17, 'Bahamas', 'BS'),
(18, 'Bahrain', 'BH'),
(19, 'Bangladesh', 'BD'),
(20, 'Barbados', 'BB'),
(21, 'Belarus', 'BY'),
(22, 'Belgium', 'BE'),
(23, 'Belize', 'BZ'),
(24, 'Benin', 'BJ'),
(25, 'Bermuda', 'BM'),
(26, 'Bhutan', 'BT'),
(27, 'Bolivia', 'BO'),
(28, 'Bosnia and Herzegovina', 'BA'),
(29, 'Botswana', 'BW'),
(30, 'Bouvet Island', 'BV'),
(31, 'Brazil', 'BR'),
(32, 'British Indian Ocean Territory', 'IO'),
(33, 'Brunei Darussalam', 'BN'),
(34, 'Bulgaria', 'BG'),
(35, 'Burkina Faso', 'BF'),
(36, 'Burundi', 'BI'),
(37, 'Cambodia', 'KH'),
(38, 'Cameroon', 'CM'),
(39, 'Canada', 'CA'),
(40, 'Cape Verde', 'CV'),
(41, 'Cayman Islands', 'KY'),
(42, 'Central African Republic', 'CF'),
(43, 'Chad', 'TD'),
(44, 'Chile', 'CL'),
(45, 'China', 'CN'),
(46, 'Christmas Island', 'CX'),
(47, 'Cocos (Keeling) Islands', 'CC'),
(48, 'Colombia', 'CO'),
(49, 'Comoros', 'KM'),
(50, 'Congo', 'CG'),
(51, 'Congo The Democratic Republic of the', 'CD'),
(52, 'Cook Islands', 'CK'),
(53, 'Costa Rica', 'CR'),
(54, 'Cote DIvoire', 'CI'),
(55, 'Croatia', 'HR'),
(56, 'Cuba', 'CU'),
(57, 'Cyprus', 'CY'),
(58, 'Czech Republic', 'CZ'),
(59, 'Denmark', 'DK'),
(60, 'Djibouti', 'DJ'),
(61, 'Dominica', 'DM'),
(62, 'Dominican Republic', 'DO'),
(63, 'Ecuador', 'EC'),
(64, 'Egypt', 'EG'),
(65, 'El Salvador', 'SV'),
(66, 'Equatorial Guinea', 'GQ'),
(67, 'Eritrea', 'ER'),
(68, 'Estonia', 'EE'),
(69, 'Ethiopia', 'ET'),
(70, 'Falkland Islands (Malvinas)', 'FK'),
(71, 'Faroe Islands', 'FO'),
(72, 'Fiji', 'FJ'),
(73, 'Finland', 'FI'),
(74, 'France', 'FR'),
(75, 'French Guiana', 'GF'),
(76, 'French Polynesia', 'PF'),
(77, 'French Southern Territories', 'TF'),
(78, 'Gabon', 'GA'),
(79, 'Gambia', 'GM'),
(80, 'Georgia', 'GE'),
(81, 'Germany', 'DE'),
(82, 'Ghana', 'GH'),
(83, 'Gibraltar', 'GI'),
(84, 'Greece', 'GR'),
(85, 'Greenland', 'GL'),
(86, 'Grenada', 'GD'),
(87, 'Guadeloupe', 'GP'),
(88, 'Guam', 'GU'),
(89, 'Guatemala', 'GT'),
(90, 'Guernsey', 'GG'),
(91, 'Guinea', 'GN'),
(92, 'Guinea-Bissau', 'GW'),
(93, 'Guyana', 'GY'),
(94, 'Haiti', 'HT'),
(95, 'Heard Island and Mcdonald Islands', 'HM'),
(96, 'Holy See (Vatican City State)', 'VA'),
(97, 'Honduras', 'HN'),
(98, 'Hong Kong', 'HK'),
(99, 'Hungary', 'HU'),
(100, 'Iceland', 'IS'),
(101, 'India', 'IN'),
(102, 'Indonesia', 'ID'),
(103, 'Iran Islamic Republic Of', 'IR'),
(104, 'Iraq', 'IQ'),
(105, 'Ireland', 'IE'),
(106, 'Isle of Man', 'IM'),
(107, 'Israel', 'IL'),
(108, 'Italy', 'IT'),
(109, 'Jamaica', 'JM'),
(110, 'Japan', 'JP'),
(111, 'Jersey', 'JE'),
(112, 'Jordan', 'JO'),
(113, 'Kazakhstan', 'KZ'),
(114, 'Kenya', 'KE'),
(115, 'Kiribati', 'KI'),
(116, 'Korea Democratic PeopleS Republic of', 'KP'),
(117, 'Korea Republic of', 'KR'),
(118, 'Kuwait', 'KW'),
(119, 'Kyrgyzstan', 'KG'),
(120, 'Lao PeopleS Democratic Republic', 'LA'),
(121, 'Latvia', 'LV'),
(122, 'Lebanon', 'LB'),
(123, 'Lesotho', 'LS'),
(124, 'Liberia', 'LR'),
(125, 'Libyan Arab Jamahiriya', 'LY'),
(126, 'Liechtenstein', 'LI'),
(127, 'Lithuania', 'LT'),
(128, 'Luxembourg', 'LU'),
(129, 'Macao', 'MO'),
(130, 'Macedonia The Former Yugoslav Republic of', 'MK'),
(131, 'Madagascar', 'MG'),
(132, 'Malawi', 'MW'),
(133, 'Malaysia', 'MY'),
(134, 'Maldives', 'MV'),
(135, 'Mali', 'ML'),
(136, 'Malta', 'MT'),
(137, 'Marshall Islands', 'MH'),
(138, 'Martinique', 'MQ'),
(139, 'Mauritania', 'MR'),
(140, 'Mauritius', 'MU'),
(141, 'Mayotte', 'YT'),
(142, 'Mexico', 'MX'),
(143, 'Micronesia Federated States of', 'FM'),
(144, 'Moldova Republic of', 'MD'),
(145, 'Monaco', 'MC'),
(146, 'Mongolia', 'MN'),
(147, 'Montserrat', 'MS'),
(148, 'Morocco', 'MA'),
(149, 'Mozambique', 'MZ'),
(150, 'Myanmar', 'MM'),
(151, 'Namibia', 'NA'),
(152, 'Nauru', 'NR'),
(153, 'Nepal', 'NP'),
(154, 'Netherlands', 'NL'),
(155, 'Netherlands Antilles', 'AN'),
(156, 'New Caledonia', 'NC'),
(157, 'New Zealand', 'NZ'),
(158, 'Nicaragua', 'NI'),
(159, 'Niger', 'NE'),
(160, 'Nigeria', 'NG'),
(161, 'Niue', 'NU'),
(162, 'Norfolk Island', 'NF'),
(163, 'Northern Mariana Islands', 'MP'),
(164, 'Norway', 'NO'),
(165, 'Oman', 'OM'),
(166, 'Pakistan', 'PK'),
(167, 'Palau', 'PW'),
(168, 'Palestinian Territory Occupied', 'PS'),
(169, 'Panama', 'PA'),
(170, 'Papua New Guinea', 'PG'),
(171, 'Paraguay', 'PY'),
(172, 'Peru', 'PE'),
(173, 'Philippines', 'PH'),
(174, 'Pitcairn', 'PN'),
(175, 'Poland', 'PL'),
(176, 'Portugal', 'PT'),
(177, 'Puerto Rico', 'PR'),
(178, 'Qatar', 'QA'),
(179, 'Reunion', 'RE'),
(180, 'Romania', 'RO'),
(181, 'Russian Federation', 'RU'),
(182, 'RWANDA', 'RW'),
(183, 'Saint Helena', 'SH'),
(184, 'Saint Kitts and Nevis', 'KN'),
(185, 'Saint Lucia', 'LC'),
(186, 'Saint Pierre and Miquelon', 'PM'),
(187, 'Saint Vincent and the Grenadines', 'VC'),
(188, 'Samoa', 'WS'),
(189, 'San Marino', 'SM'),
(190, 'Sao Tome and Principe', 'ST'),
(191, 'Saudi Arabia', 'SA'),
(192, 'Senegal', 'SN'),
(193, 'Serbia and Montenegro', 'CS'),
(194, 'Seychelles', 'SC'),
(195, 'Sierra Leone', 'SL'),
(196, 'Singapore', 'SG'),
(197, 'Slovakia', 'SK'),
(198, 'Slovenia', 'SI'),
(199, 'Solomon Islands', 'SB'),
(200, 'Somalia', 'SO'),
(201, 'South Africa', 'ZA'),
(202, 'South Georgia and the South Sandwich Islands', 'GS'),
(203, 'Spain', 'ES'),
(204, 'Sri Lanka', 'LK'),
(205, 'Sudan', 'SD'),
(206, 'Suriname', 'SR'),
(207, 'Svalbard and Jan Mayen', 'SJ'),
(208, 'Swaziland', 'SZ'),
(209, 'Sweden', 'SE'),
(210, 'Switzerland', 'CH'),
(211, 'Syrian Arab Republic', 'SY'),
(212, 'Taiwan Province of China', 'TW'),
(213, 'Tajikistan', 'TJ'),
(214, 'Tanzania United Republic of', 'TZ'),
(215, 'Thailand', 'TH'),
(216, 'Timor-Leste', 'TL'),
(217, 'Togo', 'TG'),
(218, 'Tokelau', 'TK'),
(219, 'Tonga', 'TO'),
(220, 'Trinidad and Tobago', 'TT'),
(221, 'Tunisia', 'TN'),
(222, 'Turkey', 'TR'),
(223, 'Turkmenistan', 'TM'),
(224, 'Turks and Caicos Islands', 'TC'),
(225, 'Tuvalu', 'TV'),
(226, 'Uganda', 'UG'),
(227, 'Ukraine', 'UA'),
(228, 'United Arab Emirates', 'AE'),
(229, 'United Kingdom', 'GB'),
(230, 'United States', 'US'),
(231, 'United States Minor Outlying Islands', 'UM'),
(232, 'Uruguay', 'UY'),
(233, 'Uzbekistan', 'UZ'),
(234, 'Vanuatu', 'VU'),
(235, 'Venezuela', 'VE'),
(236, 'Viet Nam', 'VN'),
(237, 'Virgin Islands British', 'VG'),
(238, 'Virgin Islands U.S.', 'VI'),
(239, 'Wallis and Futuna', 'WF'),
(240, 'Western Sahara', 'EH'),
(241, 'Yemen', 'YE'),
(242, 'Zambia', 'ZM'),
(243, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(1, 'tuấn', 'tuan@gmail.com', '0245', 'Hà Nội', 'ok', '2017-11-29 12:51:52'),
(2, 'Hang Pham Thuy', 'ngockhanh260614@gmail.com', '973378669', 'Thanh Xuân, Thanh Xuân', 'xfghfghfgh', '2017-12-03 04:06:32'),
(3, 'tuấn', 'tuan@gmail.com', '1234567890', 'Hà Nội', 'ok', '2017-12-29 06:50:13'),
(4, 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', '', 'đầ', '2018-03-31 10:18:27'),
(5, 'Việt Hưng', 'hung71483@gmail.com', '1672523165', '', 'ádfasdf', '2018-03-31 10:18:56'),
(6, 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', '', 'sdfasdf', '2018-03-31 10:21:22'),
(7, 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', '', 'ưeqw', '2018-04-01 15:08:28'),
(8, 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', '', 'adasd', '2018-04-01 15:09:10'),
(9, 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', '', '', '2018-04-07 07:44:00'),
(10, 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', '', 'ádas', '2018-04-07 07:44:45'),
(11, 'Việt Hưng', 'viethung95cute@gmail.com', '', '', 'Nội dung Test', '2018-04-18 07:30:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci,
  `menu_sort_order` int(11) DEFAULT '0',
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT '0',
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(232, 'Ngày lễ', 1, 2, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(234, 'Valenines Day', 0, 1, '', 0, 0, 0, 0, 0, 1, 232, 0, 0, NULL),
(235, 'Valenines Day1', 0, 1, '', 0, 0, 0, 0, 0, 1, 232, 0, 0, NULL),
(236, 'Home', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(237, 'New Year', 0, 1, '', 0, 0, 0, 0, 0, 1, 232, 0, 0, NULL),
(238, 'Women\'s Day', 0, 1, '', 0, 0, 0, 0, 0, 1, 232, 0, 0, NULL),
(239, 'Farther\'s Day', 0, 1, '', 0, 0, 0, 0, 0, 1, 232, 0, 0, NULL),
(240, 'Teacher\'s day', 0, 1, '', 0, 0, 0, 0, 0, 1, 234, 0, 0, NULL),
(241, 'Food day', 0, 1, '', 0, 0, 0, 0, 0, 1, 232, 0, 0, NULL),
(242, 'Book day', 0, 1, '', 0, 0, 0, 0, 0, 1, 232, 0, 0, NULL),
(243, 'Christmas Day', 0, 1, '', 0, 0, 0, 0, 0, 1, 232, 0, 0, NULL),
(244, 'May Day', 0, 1, '', 0, 0, 0, 0, 0, 1, 232, 0, 0, NULL),
(245, 'Bank holiday', 0, 1, '', 0, 0, 0, 0, 0, 1, 232, 0, 0, NULL),
(246, 'Boxing Day', 0, 1, '', 0, 0, 0, 0, 0, 1, 232, 0, 0, NULL),
(247, 'April Fools’ Day', 0, 1, '', 0, 0, 0, 0, 0, 1, 232, 0, 0, NULL),
(248, 'Easter', 0, 1, '', 0, 0, 0, 0, 0, 1, 232, 0, 0, NULL),
(249, 'Photos', 0, 2, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(250, 'Banner', 0, 3, '', 249, 0, 0, 0, 0, 1, 249, 0, 0, NULL),
(251, 'Poster', 0, 1, '', 0, 0, 0, 0, 0, 1, 249, 0, 0, NULL),
(252, 'Cover facebook', 0, 1, '', 0, 0, 0, 0, 0, 1, 249, 0, 0, NULL),
(253, 'Blogs', 0, 6, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(254, 'Slide Power Point', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(255, 'Link Game', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(441, 'vn', 'Ngày lễ', 0, '', 232),
(442, 'en', 'Ngày lễ', 0, '', 232),
(445, 'vn', 'Valenines Day', 0, '', 234),
(446, 'en', 'Valenines Day', 0, '', 234),
(447, 'vn', 'Valenines Day1', 0, '', 235),
(448, 'en', 'Valenines Day1', 0, '', 235),
(449, 'vn', 'Home', 0, '', 236),
(450, 'en', 'Home', 0, '', 236),
(451, 'vn', 'New Year', 0, '', 237),
(452, 'en', 'New Year', 0, '', 237),
(453, 'vn', 'Women\'s Day', 0, '', 238),
(454, 'en', 'Women\'s Day', 0, '', 238),
(455, 'vn', 'Farther\'s Day', 0, '', 239),
(456, 'en', 'Farther\'s Day', 0, '', 239),
(457, 'vn', 'Teacher\'s day', 0, '', 240),
(458, 'en', 'Teacher\'s day', 0, '', 240),
(459, 'vn', 'Food day', 0, '', 241),
(460, 'en', 'Food day', 0, '', 241),
(461, 'vn', 'Book day', 0, '', 242),
(462, 'en', 'Book day', 0, '', 242),
(463, 'vn', 'Christmas Day', 0, '', 243),
(464, 'en', 'Christmas Day', 0, '', 243),
(465, 'vn', 'May Day', 0, '', 244),
(466, 'en', 'May Day', 0, '', 244),
(467, 'vn', 'Bank holiday', 0, '', 245),
(468, 'en', 'Bank holiday', 0, '', 245),
(469, 'vn', 'Boxing Day', 0, '', 246),
(470, 'en', 'Boxing Day', 0, '', 246),
(471, 'vn', 'April Fools’ Day', 0, '', 247),
(472, 'en', 'April Fools’ Day', 0, '', 247),
(473, 'vn', 'Easter', 0, '', 248),
(474, 'en', 'Easter', 0, '', 248),
(475, 'vn', 'Photos', 0, '', 249),
(476, 'en', 'Photos', 0, '', 249),
(477, 'vn', 'Banner', 0, '', 250),
(478, 'en', 'Banner', 0, '', 250),
(479, 'vn', 'Poster', 0, '', 251),
(480, 'en', 'Poster', 0, '', 251),
(481, 'vn', 'Cover facebook', 0, '', 252),
(482, 'en', 'Cover facebook', 0, '', 252),
(483, 'vn', 'Blogs', 0, '', 253),
(484, 'en', 'Blogs', 0, '', 253),
(485, 'vn', 'Slide Power Point', 0, '', 254),
(486, 'en', 'Slide Power Point', 0, '', 254),
(487, 'vn', 'Link Game', 0, '', 255),
(488, 'en', 'Link Game', 0, '', 255);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci,
  `news_des` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `news_img` text COLLATE utf8_unicode_ci,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `news_sub_info1` text COLLATE utf8_unicode_ci,
  `news_sub_info2` text COLLATE utf8_unicode_ci,
  `news_sub_info3` text COLLATE utf8_unicode_ci,
  `news_sub_info4` text COLLATE utf8_unicode_ci,
  `news_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `newstag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `newstag_arr`) VALUES
(51, '15 Education-Related Resources to Enjoy Learning', '15 Education-Related Resources to Enjoy Learning', '<p>On Nelson Mandela&rsquo;s words: &ldquo;Education is the most powerful weapon which you can use to change the world.&rdquo; Here, at&nbsp;<a href=\"https://www.freepikcompany.com/?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\"><strong>Freepik Company</strong></a>, we cannot agree more. We create graphic resources that help teachers craft engaging lessons with our variety of<strong>&nbsp;illustrations, icons, mockups, presentation templates,&nbsp;</strong>or<strong>&nbsp;photos.</strong></p>\r\n\r\n<h6>Education Photos by&nbsp;<a href=\"https://www.freepik.com/?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\">Freepik</a></h6>\r\n\r\n<p><a href=\"https://www.freepik.com/free-photo/elementary-scholars_5399603.htm?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\" rel=\"noopener\" target=\"_blank\"><img alt=\"kids at school\" height=\"433\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/13584.jpg\" width=\"650\" /></a></p>\r\n\r\n<p>Browse<a href=\"https://www.freepik.com/collection/studying/1748\" rel=\"noopener\" target=\"_blank\">&nbsp;Freepik Collections</a>&nbsp;for more pictures like the ones you see here. They feature books, tablets or computers in school, libraries or classrooms.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.freepik.com/free-photo/graduation-concept-with-student-throwing-hats-air_4764184.htm?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\" rel=\"noopener\" target=\"_blank\"><img alt=\"students\" height=\"650\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/153356-OU5UBP-596-min-1.jpg\" width=\"650\" /></a></p>\r\n\r\n<p>From kindergarten to college, find great-quality photos in every stage of the education cycle.</p>\r\n\r\n<p><a href=\"https://www.freepik.com/free-photo/graduation-concept-with-student-throwing-hats-air_4764184.htm?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\" rel=\"noopener\" target=\"_blank\"><img alt=\"graduation picture\" height=\"434\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/PBR1FN0-1.jpg\" width=\"650\" /></a></p>\r\n\r\n<h6>Education Vectors by&nbsp;<a href=\"https://www.freepik.com/popular-vectors?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\">Freepik</a></h6>\r\n\r\n<p><a href=\"https://www.freepik.com/free-vector/young-people-reading-together_5306596.htm?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\" rel=\"noopener\" target=\"_blank\"><img alt=\"illustrations\" height=\"433\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/2787864.jpg\" width=\"650\" /></a></p>\r\n\r\n<p>Illustrations can serve to decorate classrooms, create printable cards or customize lesson activities. Give it a go!</p>\r\n\r\n<h6><a href=\"https://www.freepik.com/free-vector/flat-children-back-school_4866482.htm?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\" rel=\"noopener\" target=\"_blank\"><img alt=\"School illustrations\" height=\"650\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/2556502.jpg\" width=\"650\" /></a></h6>\r\n\r\n<p>We want to make life easier for both teachers and students. Students can customize their schedule with one of our templates. Organizing and planning ahead can help you a lot!</p>\r\n\r\n<p><a href=\"https://www.freepik.com/free-vector/flat-style-school-timetable-template_4927416.htm?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\" rel=\"noopener\" target=\"_blank\"><img alt=\"School Schedule\" height=\"650\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/2592217.jpg\" width=\"650\" /></a></p>\r\n\r\n<p>Motivate students with certificates of achievements like the one we have here. Rewarding and recognizing students&rsquo; work can make them get involved in class even more.</p>\r\n\r\n<h6><a href=\"https://www.freepik.com/free-vector/certificate-achievement-abstract-template_6429908.htm?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\" rel=\"noopener\" target=\"_blank\"><img alt=\"certificate of achievement\" height=\"433\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/3311783.jpg\" width=\"650\" /></a></h6>\r\n\r\n<h6>Education PSD files by&nbsp;<a href=\"https://www.freepik.com/collection/spring/592228?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=spring-compilation\">Freepik</a></h6>\r\n', '2317146.jpg', 0, 68, '', '2018-05-04 13:05:10', '2020-03-03 04:03:04', 1, '', '', '', '', '', '15 Education-Related Resources to Enjoy Learning', 'Có nhiều cách giúp cho xe hơi của bạn luôn có một không khí thoáng mát và một mùi thơm dễ chịu. Trong đó, cách xử lý mùi trên ô tô đơn giản và hiệu quả nhất là sử dụng nước hoa.', '15-education-related-resources-to-enjoy-learning', 'Cách xử lý mùi trên ô tô bằng nước hoa', 1, ''),
(53, 'Education Icon Collection by Flaticon x Tarro de los Idiomas', 'Laura has been a big fan of Flaticon icons since she started creating her own resources for the classroom. Here, at Freepik Company, we love seeing that our resources are useful for anyone and can be used in many diffe', '<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p>Besides, as a&nbsp;<a href=\"https://www.flaticon.com/?utm_source=blog&amp;utm_medium=blog&amp;utm_campaign=tips-flaticon-contributor-icon-design\" rel=\"noopener\" target=\"_blank\">Flaticon</a>&nbsp;contributor, your content may be rejected if it doesn&rsquo;t meet our standards. So these are some good reasons why you should organize your artboard and read this post.</p>\r\n\r\n<p>Below we break down the most common errors among contributors in terms of artboard organization, and we share with you some tips on how to avoid them.</p>\r\n\r\n<h3>Common errors</h3>\r\n\r\n<h6><strong>1. Leaving icon&rsquo;s components outside the artboard</strong></h6>\r\n\r\n<p>All the elements or parts that form the icon must be inside the artboard. Think of the artboard as an empty canvas: you don&rsquo;t want to spoil the surface underneath it, do you?</p>\r\n\r\n<p>Plus, our team will reject your icons if the artboard isn&rsquo;t clean or the elements aren&rsquo;t arranged properly.</p>\r\n\r\n<p><img alt=\"unwanted elements in the artboard\" height=\"322\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/Imagen1.jpg\" width=\"886\" /></p>\r\n\r\n<h6>2. Forget reference images outside the artboard</h6>\r\n\r\n<p>Frequently, designers use text or images as a reference for their own design, which is great. However, make sure you remove them from your file before submitting your resources.</p>\r\n\r\n<p><img alt=\"common errors icon design\" height=\"322\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/Imagen2.jpg\" width=\"886\" /></p>\r\n\r\n<h6>3. Using a white square as a guide</h6>\r\n\r\n<p>Contributors sometimes insert a white square as a guide instead of using the artboard. This square isn&rsquo;t necessary, so if this happens, we&rsquo;ll reject your resources.</p>\r\n\r\n<p>Instead, use the artboard (with adequate size) for the icon creation process.</p>\r\n\r\n<p><img alt=\"unwanted elements in the artboard\" height=\"323\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/Imagen3.png\" width=\"886\" /></p>\r\n\r\n<h6>4. Isolated nodes in the artboard</h6>\r\n\r\n<p>After finishing the design, check artwork and remove all the nodes that don&rsquo;t belong o the</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'FI-1280x1878l-cabecera-vertical.jpg', 0, 68, '', '2018-05-04 13:05:44', '2020-03-03 04:03:56', 1, '', '', '', '', '', 'Education Icon Collection by Flaticon x Tarro de los Idiomas', 'Sử dụng nước hoa ô tô đã không còn xa lạ đối với các chủ xe hiện nay. Tuy nhiên không phải ai cũng có kinh nghiệm chọn mùi nước hoa ô tô phù hợp để đạt được hiệu quả tốt nhất.', 'education-icon-collection-by-flaticon-x-tarro-de-los-idiomas', 'Kinh nghiệm chọn mùi nước hoa ô tô bạn nên biết', 1, ''),
(54, 'Icon Design: The Importance of Organizing Your Artboard', 'Organizing and keeping your artboard clean is essential. No matter if you work with a client or as a freelance designer, it’s important that your final design is neat and looks professional.', '<p>Besides, as a&nbsp;<a href=\"https://www.flaticon.com/?utm_source=blog&amp;utm_medium=blog&amp;utm_campaign=tips-flaticon-contributor-icon-design\" rel=\"noopener\" target=\"_blank\">Flaticon</a>&nbsp;contributor, your content may be rejected if it doesn&rsquo;t meet our standards. So these are some good reasons why you should organize your artboard and read this post.</p>\r\n\r\n<p>Below we break down the most common errors among contributors in terms of artboard organization, and we share with you some tips on how to avoid them.</p>\r\n\r\n<h3>Common errors</h3>\r\n\r\n<h6><strong>1. Leaving icon&rsquo;s components outside the artboard</strong></h6>\r\n\r\n<p>All the elements or parts that form the icon must be inside the artboard. Think of the artboard as an empty canvas: you don&rsquo;t want to spoil the surface underneath it, do you?</p>\r\n\r\n<p>Plus, our team will reject your icons if the artboard isn&rsquo;t clean or the elements aren&rsquo;t arranged properly.</p>\r\n\r\n<p><img alt=\"unwanted elements in the artboard\" height=\"322\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/Imagen1.jpg\" width=\"886\" /></p>\r\n\r\n<h6>2. Forget reference images outside the artboard</h6>\r\n\r\n<p>Frequently, designers use text or images as a reference for their own design, which is great. However, make sure you remove them from your file before submitting your resources.</p>\r\n\r\n<p><img alt=\"common errors icon design\" height=\"322\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/Imagen2.jpg\" width=\"886\" /></p>\r\n\r\n<h6>3. Using a white square as a guide</h6>\r\n\r\n<p>Contributors sometimes insert a white square as a guide instead of using the artboard. This square isn&rsquo;t necessary, so if this happens, we&rsquo;ll reject your resources.</p>\r\n\r\n<p>Instead, use the artboard (with adequate size) for the icon creation process.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"unwanted elements in the artboard\" height=\"219\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/Imagen3.png\" width=\"600\" /></p>\r\n\r\n<h6>4. Isolated nodes in the artboard</h6>\r\n\r\n<p>After finishing the design, check artwork and remove all the nodes that don&rsquo;t belong o the</p>\r\n', 'icon-design-cover-blog.png', 0, 68, '', '2018-05-04 14:05:13', '2020-03-03 04:03:45', 1, '', '', '', '', '', 'Icon Design: The Importance of Organizing Your Artboard', 'Sử dụng nước hoa ô tô là cách làm phổ biến của giới tài xế và chủ xe hiện nay. Nếu bạn muốn biết nước hoa ô tô tốt nhất là của thương hiệu nào, xin mời xem nội dung bài viết sau đây.\r\n', 'icon-design-the-importance-of-organizing-your-artboard', 'Nước hoa ô tô tốt nhất là của thương hiệu nào', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci,
  `newscat_des` text COLLATE utf8_unicode_ci,
  `newscat_content` text COLLATE utf8_unicode_ci,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `newscat_img` text COLLATE utf8_unicode_ci,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(63, 'Giới thiệu công ty', '<p>M&ocirc; tả Hỏi đ&aacute;p</p>\r\n', '', 0, 0, '2018-04-02 01:04:26', NULL, 1, 'n3.jpg', '', '', '', '', '', 'Giới thiệu công ty', '', 'gioi-thieu-cong-ty', '', 1),
(64, 'Chính sách chung', '<p>M&ocirc; tả ch&iacute;nh s&aacute;ch</p>\r\n', '', 0, 0, '2018-04-02 01:04:23', NULL, 1, 'n5.jpg', '', '', '', '', '', 'Chính sách chung', '', 'chinh-sach-chung', '', 1),
(65, 'Hướng dẫn sử dụng', '<p>M&ocirc; tả đại l&yacute;</p>\r\n', '', 0, 0, '2018-04-02 01:04:12', NULL, 1, 'n6.jpg', '', '', '', '', '', 'Hướng dẫn sử dụng', '', 'huong-dan-su-dung', '', 1),
(66, 'Dịch vụ khách hàng', '<p>M&ocirc; tả dịch vụ kh&aacute;ch h&agrave;ng</p>\r\n', '', 0, 0, '2018-04-02 01:04:51', NULL, 1, 'n3.jpg', '', '', '', '', '', 'Dịch vụ khách hàng', '', 'dich-vu-khach-hang', '', 1),
(68, 'Tin tức 1', '', '', 0, 0, '2018-05-04 13:05:18', NULL, 1, NULL, '', '', '', '', '', 'Tin tức 1', '', 'tin-tuc', '', 1),
(69, 'Chuyển giao công nghệ', '', '', 0, 0, '2018-04-08 22:04:36', NULL, 1, '', '', '', '', '', '', 'Chuyển giao công nghệ', '', 'chuyen-giao-cong-nghe', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci,
  `lang_newscat_des` text COLLATE utf8_unicode_ci,
  `lang_newscat_content` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(121, 63, 'vn', 'Giới thiệu công ty', '<p>M&ocirc; tả Hỏi đ&aacute;p</p>\r\n', NULL, '', '', '', '', '', 0, 'gioi-thieu-cong-ty', '', 'Giới thiệu công ty', ''),
(122, 63, 'en', 'Hỏi đáp', '<p>M&ocirc; tả Hỏi đ&aacute;p</p>\r\n', '', '', '', '', '', '', 0, 'hoi-dap', '', 'Hỏi đáp', ''),
(123, 64, 'vn', 'Chính sách chung', '<p>M&ocirc; tả ch&iacute;nh s&aacute;ch</p>\r\n', NULL, '', '', '', '', '', 1, 'chinh-sach-chung', '', 'Chính sách chung', ''),
(124, 64, 'en', 'Chính sách', '<p>M&ocirc; tả ch&iacute;nh s&aacute;ch</p>\r\n', '1', '', '', '', '', '', 1, 'chinh-sach', '', 'Chính sách', ''),
(125, 65, 'vn', 'Hướng dẫn sử dụng', '<p>M&ocirc; tả đại l&yacute;</p>\r\n', NULL, '', '', '', '', '', 0, 'huong-dan-su-dung', '', 'Hướng dẫn sử dụng', ''),
(126, 65, 'en', 'Đại lý', '<p>M&ocirc; tả đại l&yacute;</p>\r\n', '', '', '', '', '', '', 0, 'dai-ly', '', 'Đại lý', ''),
(127, 66, 'vn', 'Dịch vụ khách hàng', '<p>M&ocirc; tả dịch vụ kh&aacute;ch h&agrave;ng</p>\r\n', NULL, '', '', '', '', '', 0, 'dich-vu-khach-hang', '', 'Dịch vụ khách hàng', ''),
(128, 66, 'en', 'Lao động', '<p>M&ocirc; tả lao động</p>\r\n', '', '', '', '', '', '', 0, 'lao-dong', '', 'Lao động', ''),
(131, 68, 'vn', 'Tin tức 1', '', NULL, '', '', '', '', '', 1, 'tin-tuc', '', 'Tin tức 1', ''),
(132, 68, 'en', 'News Origanic', '<p>english version</p>\r\n', '1', '', '', '', '', '', 1, 'en-tin-tuc', '', 'Tin tức', ''),
(133, 69, 'vn', 'Chuyển giao công nghệ', '', '1', '', '', '', '', '', 1, 'chuyen-giao-cong-nghe', '', 'Chuyển giao công nghệ', ''),
(134, 69, 'en', 'Technology Transfer', '<p>english version</p>\r\n', '1', '', '', '', '', '', 1, 'en-chuyen-giao-cong-nghe', '', 'Chuyển giao công nghệ', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag`
--

CREATE TABLE `newstag` (
  `newstag_id` int(11) NOT NULL,
  `newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sort_order` int(11) NOT NULL,
  `newstag_created_date` datetime NOT NULL,
  `newstag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `newstag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag`
--

INSERT INTO `newstag` (`newstag_id`, `newstag_name`, `newstag_des`, `newstag_content`, `newstag_sort_order`, `newstag_created_date`, `newstag_update_date`, `state`, `newstag_img`, `newstag_sub_info1`, `newstag_sub_info2`, `newstag_sub_info3`, `newstag_sub_info4`, `newstag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(2, 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'sách hot', 'chuyên sách', 'sach-hot', 'sach', 1),
(3, 'Vở đẹp', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'Vở đẹp', '', 'vo-dep', '', 1),
(4, 'Butb', '<p>bb</p>\r\n', '', 0, '2017-12-13 11:12:54', '2017-12-13 11:12:11', 1, '', '', '', '', '', '', 'Butb', 'bb', 'butb', 'bb', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag_languages`
--

CREATE TABLE `newstag_languages` (
  `id` int(11) NOT NULL,
  `newstag_id` int(11) NOT NULL,
  `languages_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_content` text CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `lang_newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info5` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag_languages`
--

INSERT INTO `newstag_languages` (`id`, `newstag_id`, `languages_code`, `lang_newstag_name`, `lang_newstag_des`, `lang_newstag_content`, `lang_newstag_sub_info1`, `lang_newstag_sub_info2`, `lang_newstag_sub_info3`, `lang_newstag_sub_info4`, `lang_newstag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(3, 2, 'vn', 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach-hot', 'sach', 'sách hot', 'chuyên sách'),
(4, 2, 'en', 'sách en', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach', 'sach', 'sách', 'chuyên sách'),
(5, 3, 'vn', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(6, 3, 'en', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(7, 4, 'vn', 'But', '<p>but</p>\r\n', '', '', '', '', '', '', 1, 'butb', 'bb', 'Butb', 'bb'),
(8, 4, 'en', 'pen', '<p>pen</p>\r\n', '', '', '', '', '', '', 1, 'but', 'b', 'But', 'b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci,
  `lang_news_des` text COLLATE utf8_unicode_ci,
  `lang_news_content` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(101, 51, 'vn', '15 Education-Related Resources to Enjoy Learning', '15 Education-Related Resources to Enjoy Learning', '<p>On Nelson Mandela&rsquo;s words: &ldquo;Education is the most powerful weapon which you can use to change the world.&rdquo; Here, at&nbsp;<a href=\"https://www.freepikcompany.com/?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\"><strong>Freepik Company</strong></a>, we cannot agree more. We create graphic resources that help teachers craft engaging lessons with our variety of<strong>&nbsp;illustrations, icons, mockups, presentation templates,&nbsp;</strong>or<strong>&nbsp;photos.</strong></p>\r\n\r\n<h6>Education Photos by&nbsp;<a href=\"https://www.freepik.com/?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\">Freepik</a></h6>\r\n\r\n<p><a href=\"https://www.freepik.com/free-photo/elementary-scholars_5399603.htm?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\" rel=\"noopener\" target=\"_blank\"><img alt=\"kids at school\" height=\"433\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/13584.jpg\" width=\"650\" /></a></p>\r\n\r\n<p>Browse<a href=\"https://www.freepik.com/collection/studying/1748\" rel=\"noopener\" target=\"_blank\">&nbsp;Freepik Collections</a>&nbsp;for more pictures like the ones you see here. They feature books, tablets or computers in school, libraries or classrooms.&nbsp;</p>\r\n\r\n<p><a href=\"https://www.freepik.com/free-photo/graduation-concept-with-student-throwing-hats-air_4764184.htm?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\" rel=\"noopener\" target=\"_blank\"><img alt=\"students\" height=\"650\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/153356-OU5UBP-596-min-1.jpg\" width=\"650\" /></a></p>\r\n\r\n<p>From kindergarten to college, find great-quality photos in every stage of the education cycle.</p>\r\n\r\n<p><a href=\"https://www.freepik.com/free-photo/graduation-concept-with-student-throwing-hats-air_4764184.htm?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\" rel=\"noopener\" target=\"_blank\"><img alt=\"graduation picture\" height=\"434\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/PBR1FN0-1.jpg\" width=\"650\" /></a></p>\r\n\r\n<h6>Education Vectors by&nbsp;<a href=\"https://www.freepik.com/popular-vectors?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\">Freepik</a></h6>\r\n\r\n<p><a href=\"https://www.freepik.com/free-vector/young-people-reading-together_5306596.htm?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\" rel=\"noopener\" target=\"_blank\"><img alt=\"illustrations\" height=\"433\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/2787864.jpg\" width=\"650\" /></a></p>\r\n\r\n<p>Illustrations can serve to decorate classrooms, create printable cards or customize lesson activities. Give it a go!</p>\r\n\r\n<h6><a href=\"https://www.freepik.com/free-vector/flat-children-back-school_4866482.htm?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\" rel=\"noopener\" target=\"_blank\"><img alt=\"School illustrations\" height=\"650\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/2556502.jpg\" width=\"650\" /></a></h6>\r\n\r\n<p>We want to make life easier for both teachers and students. Students can customize their schedule with one of our templates. Organizing and planning ahead can help you a lot!</p>\r\n\r\n<p><a href=\"https://www.freepik.com/free-vector/flat-style-school-timetable-template_4927416.htm?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\" rel=\"noopener\" target=\"_blank\"><img alt=\"School Schedule\" height=\"650\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/2592217.jpg\" width=\"650\" /></a></p>\r\n\r\n<p>Motivate students with certificates of achievements like the one we have here. Rewarding and recognizing students&rsquo; work can make them get involved in class even more.</p>\r\n\r\n<h6><a href=\"https://www.freepik.com/free-vector/certificate-achievement-abstract-template_6429908.htm?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=compilation-education\" rel=\"noopener\" target=\"_blank\"><img alt=\"certificate of achievement\" height=\"433\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/3311783.jpg\" width=\"650\" /></a></h6>\r\n\r\n<h6>Education PSD files by&nbsp;<a href=\"https://www.freepik.com/collection/spring/592228?utm_source=blog&amp;utm_medium=post&amp;utm_campaign=spring-compilation\">Freepik</a></h6>\r\n', '', '', '', '', '', 0, '15-education-related-resources-to-enjoy-learning', '15 Education-Related Resources to Enjoy Learning', 'Có nhiều cách giúp cho xe hơi của bạn luôn có một không khí thoáng mát và một mùi thơm dễ chịu. Trong đó, cách xử lý mùi trên ô tô đơn giản và hiệu quả nhất là sử dụng nước hoa.', 'Cách xử lý mùi trên ô tô bằng nước hoa'),
(102, 51, 'en', 'english version Cách xử lý mùi trên ô tô bằng nước hoa', 'english version Có nhiều cách giúp cho xe hơi của bạn luôn có một không khí thoáng mát và một mùi thơm dễ chịu. Trong đó, cách xử lý mùi trên ô tô đơn giản và hiệu quả nhất là sử dụng nước hoa.\r\n', 'english version <p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Để <a href=\"http://aroma-car.vn/nuoc-hoa-xit\"><span style=\"color:#16a085\"><strong>xử l&yacute; m&ugrave;i tr&ecirc;n &ocirc; t&ocirc;</strong></span></a> đảm bảo hiệu quả v&agrave; giữ cho xe một kh&ocirc;ng gian lu&ocirc;n tho&aacute;ng m&aacute;t v&agrave; dễ chịu, bạn c&oacute; thể thử một trong những c&aacute;ch sau đ&acirc;y.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"cach-xu-ly-mui-tren-o-to\" height=\"409\" src=\"https://lh4.googleusercontent.com/K0bz-IIQzWpzHgZqpamih9TpxrP-UaEnbqV0Q-5_jR59JP_QwI1oTfSAVg93XASIHperZA9oE51hyzrth1ZPUeJUr-A5qWkj0ZJf5CBL33UNLZ8_q8ZV-DDh0y0dIa83ZRiGzUbEW3lOXpC2cA\" width=\"600\" /></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">H&igrave;nh 1. C&aacute;c m&ugrave;i h&ocirc;i tr&ecirc;n &ocirc; t&ocirc; sẽ l&agrave;m bạn kh&oacute; chịu khi l&aacute;i xe</span></span></em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:22px\"><span style=\"font-family:Times New Roman,Times,serif\">Một số phương ph&aacute;p gi&uacute;p xử l&yacute; m&ugrave;i tr&ecirc;n &ocirc; t&ocirc; hiệu quả</span></span></strong></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">C&oacute; nhiều nguy&ecirc;n nh&acirc;n để dẫn đến t&igrave;nh trạng xuất hiện m&ugrave;i h&ocirc;i kh&oacute; chịu tr&ecirc;n xe &ocirc; t&ocirc; của bạn. C&oacute; thể l&agrave; m&ugrave;i thuốc l&agrave;, m&ugrave;i thức ăn, m&ugrave;i bụi bẩn,&hellip;.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Để x&oacute;a đi những m&ugrave;i kh&oacute; chịu đ&oacute; tr&ecirc;n &ocirc; t&ocirc; một c&aacute;ch hiệu quả, bạn c&oacute; thể thử một trong những c&aacute;ch sau:</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">1. Vệ sinh xe &ocirc; t&ocirc; một c&aacute;ch thường xuy&ecirc;n:</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Đ&acirc;y l&agrave; c&aacute;ch<strong> xử l&yacute; m&ugrave;i tr&ecirc;n &ocirc; t&ocirc;</strong> ai cũng biết nhưng kh&ocirc;ng phải chủ xe n&agrave;o cũng si&ecirc;ng năng v&agrave; để &yacute; l&agrave;m vệ sinh một c&aacute;ch đều đặn xe &ocirc; t&ocirc; của m&igrave;nh để đảm bảo cho kh&ocirc;ng gian trong xe lu&ocirc;n tho&aacute;ng m&aacute;t v&agrave; kh&ocirc;ng c&ograve;n m&ugrave;i kh&oacute; chịu.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">2. Tuyệt đối kh&ocirc;ng cho ph&eacute;p xả r&aacute;c tr&ecirc;n xe:</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Nhiều người vẫn c&oacute; th&oacute;i quen t&ugrave;y tiện xả r&aacute;c sau khi ăn uống xong v&agrave; ở tr&ecirc;n xe cũng kh&ocirc;ng ngoại lệ. </span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Đ&acirc;y l&agrave; th&oacute;i quen rất xấu, đặc biệt l&agrave; ở tr&ecirc;n xe &ocirc; t&ocirc; sẽ g&acirc;y bẩn v&agrave; &ocirc; nhiễm trong một kh&ocirc;ng gian nhỏ, rất dễ dẫn đến vi khuẩn v&agrave; c&aacute;c m&ugrave;i h&ocirc;i tỏa lan trong khắp &ocirc; t&ocirc; của bạn.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">3. Thường xuy&ecirc;n mở cửa xe để lưu th&ocirc;ng với kh&ocirc;ng kh&iacute; b&ecirc;n ngo&agrave;i nếu c&oacute; thể:</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Nếu c&oacute; điều kiện, bạn n&ecirc;n mở cửa xe thường xuy&ecirc;n để gi&uacute;p cho kh&ocirc;ng kh&iacute; b&ecirc;n trong xe v&agrave; b&ecirc;n ngo&agrave;i được lưu th&ocirc;ng với nhau. Điều n&agrave;y gi&uacute;p cho kh&ocirc;ng kh&iacute; trong xe đỡ bị ngột ngạt v&agrave; kh&ocirc;ng gian trở n&ecirc;n tho&aacute;ng m&aacute;t hơn.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">4. Bật điều h&ograve;a trước khoảng 10 ph&uacute;t khi bắt đầu l&aacute;i xe:</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Với c&aacute;ch xử l&yacute; m&ugrave;i tr&ecirc;n &ocirc; t&ocirc; n&agrave;y bạn sẽ gi&uacute;p kh&ocirc;ng kh&iacute; trong xe tho&aacute;ng m&aacute;t hơn một c&aacute;ch nhanh ch&oacute;ng v&agrave; rất hiệu quả để l&agrave;m bay bớt c&aacute;c m&ugrave;i kh&oacute; chịu tr&ecirc;n xe của bạn.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">5. Lựa chọn loại nước hoa &ocirc; t&ocirc; cao cấp v&agrave; chất lượng cho kh&ocirc;ng gian xe của bạn</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"cach-xu-ly-mui-tren-o-to\" height=\"600\" src=\"https://lh3.googleusercontent.com/EaovmvXcdH-KPn7cAmAeRMDh_qt4INN38kvDSSKNH0T6S7TdARSz7ANVbkEL4RqehZunyhmroNNwlsTba6MXxxuT25SA8A1XVcEjVvxaxDKAl4qD-vWS5uxj-BZhsWE8T-4XoKGZanfAamplLQ\" width=\"600\" /></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">H&igrave;nh 2. Hương thơm nhẹ nh&agrave;ng từ tinh dầu gi&uacute;p bạn thoải m&aacute;i tr&ecirc;n xe &ocirc; t&ocirc; của m&igrave;nh</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Việc sử dụng một loại nước hoa chất lượng c&oacute; m&ugrave;i thơm nhẹ nh&agrave;ng sẽ gi&uacute;p cho kh&ocirc;ng gian trong xe của bạn bay bớt c&aacute;c m&ugrave;i kh&oacute; chịu m&agrave; chỉ c&ograve;n m&ugrave;i thơm của nước hoa.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Điều n&agrave;y gi&uacute;p cho người ngồi trong xe sẽ cảm thấy dễ chịu &nbsp;v&agrave; thoải m&aacute;i hơn.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Tr&ecirc;n đ&acirc;y l&agrave; c&aacute;c c&aacute;ch xử l&yacute; m&ugrave;i tr&ecirc;n &ocirc; t&ocirc; hiệu quả cho bạn.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Để lựa chọn được c&aacute;c mẫu nước hoa &ocirc; t&ocirc; cao cấp v&agrave; chất lượng, bạn c&oacute; thể truy cập địa chỉ web:<strong><span style=\"color:#16a085\"> </span><a href=\"http://aroma-car.vn/\"><span style=\"color:#16a085\">http://aroma-car.vn/</span></a></strong> để được tư vấn v&agrave; chăm s&oacute;c c&aacute;ch tốt nhất</span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><br />\r\n&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-cach-xu-ly-mui-tren-o-to-bang-nuoc-hoa', 'Cách xử lý mùi trên ô tô bằng nước hoa', 'Có nhiều cách giúp cho xe hơi của bạn luôn có một không khí thoáng mát và một mùi thơm dễ chịu. Trong đó, cách xử lý mùi trên ô tô đơn giản và hiệu quả nhất là sử dụng nước hoa.', 'Cách xử lý mùi trên ô tô bằng nước hoa'),
(105, 53, 'vn', 'Education Icon Collection by Flaticon x Tarro de los Idiomas', 'Laura has been a big fan of Flaticon icons since she started creating her own resources for the classroom. Here, at Freepik Company, we love seeing that our resources are useful for anyone and can be used in many diffe', '<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p>Besides, as a&nbsp;<a href=\"https://www.flaticon.com/?utm_source=blog&amp;utm_medium=blog&amp;utm_campaign=tips-flaticon-contributor-icon-design\" rel=\"noopener\" target=\"_blank\">Flaticon</a>&nbsp;contributor, your content may be rejected if it doesn&rsquo;t meet our standards. So these are some good reasons why you should organize your artboard and read this post.</p>\r\n\r\n<p>Below we break down the most common errors among contributors in terms of artboard organization, and we share with you some tips on how to avoid them.</p>\r\n\r\n<h3>Common errors</h3>\r\n\r\n<h6><strong>1. Leaving icon&rsquo;s components outside the artboard</strong></h6>\r\n\r\n<p>All the elements or parts that form the icon must be inside the artboard. Think of the artboard as an empty canvas: you don&rsquo;t want to spoil the surface underneath it, do you?</p>\r\n\r\n<p>Plus, our team will reject your icons if the artboard isn&rsquo;t clean or the elements aren&rsquo;t arranged properly.</p>\r\n\r\n<p><img alt=\"unwanted elements in the artboard\" height=\"322\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/Imagen1.jpg\" width=\"886\" /></p>\r\n\r\n<h6>2. Forget reference images outside the artboard</h6>\r\n\r\n<p>Frequently, designers use text or images as a reference for their own design, which is great. However, make sure you remove them from your file before submitting your resources.</p>\r\n\r\n<p><img alt=\"common errors icon design\" height=\"322\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/Imagen2.jpg\" width=\"886\" /></p>\r\n\r\n<h6>3. Using a white square as a guide</h6>\r\n\r\n<p>Contributors sometimes insert a white square as a guide instead of using the artboard. This square isn&rsquo;t necessary, so if this happens, we&rsquo;ll reject your resources.</p>\r\n\r\n<p>Instead, use the artboard (with adequate size) for the icon creation process.</p>\r\n\r\n<p><img alt=\"unwanted elements in the artboard\" height=\"323\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/Imagen3.png\" width=\"886\" /></p>\r\n\r\n<h6>4. Isolated nodes in the artboard</h6>\r\n\r\n<p>After finishing the design, check artwork and remove all the nodes that don&rsquo;t belong o the</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'education-icon-collection-by-flaticon-x-tarro-de-los-idiomas', 'Education Icon Collection by Flaticon x Tarro de los Idiomas', 'Sử dụng nước hoa ô tô đã không còn xa lạ đối với các chủ xe hiện nay. Tuy nhiên không phải ai cũng có kinh nghiệm chọn mùi nước hoa ô tô phù hợp để đạt được hiệu quả tốt nhất.', 'Kinh nghiệm chọn mùi nước hoa ô tô bạn nên biết'),
(106, 53, 'en', 'english version Kinh nghiệm chọn mùi nước hoa ô tô bạn nên biết', 'english version Sử dụng nước hoa ô tô đã không còn xa lạ đối với các chủ xe hiện nay. Tuy nhiên không phải ai cũng có kinh nghiệm chọn mùi nước hoa ô tô phù hợp để đạt được hiệu quả tốt nhất.', 'english version <p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><a href=\"http://aroma-car.vn/cach-xu-ly-mui-tren-o-to-bang-nuoc-hoa\"><span style=\"color:#16a085\"><strong>Kinh nghiệm chọn m&ugrave;i nước hoa &ocirc; t&ocirc; </strong></span></a>sẽ gi&uacute;p bạn lựa chọn được những sản phẩm chất lượng nhất đảm bảo hương thơm nhẹ nh&agrave;ng m&agrave; kh&ocirc;ng ảnh hưởng g&igrave; đến sức khỏe của mọi người cũng như m&ocirc;i trường xung quanh.</span></span></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:22px\"><span style=\"font-family:Times New Roman,Times,serif\">Kinh nghiệm chọn m&ugrave;i nước hoa &ocirc; t&ocirc; bạn n&ecirc;n biết</span></span></strong></h2>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Trong xe &ocirc; t&ocirc; thỉnh thoảng sẽ c&oacute; m&ugrave;i h&ocirc;i kh&oacute; chịu do nhiều nguy&ecirc;n nh&acirc;n cả về chủ quan v&agrave; kh&aacute;ch quan đem lại, đặc biệt l&agrave; đối với những người bị say xe lại c&agrave;ng kh&ocirc;ng thể chịu nổi khi mới bước l&ecirc;n xe.</span></span></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Ch&iacute;nh v&igrave; vậy, hiện nay c&aacute;c xe &ocirc; t&ocirc; thường sử dụng nước hoa để l&agrave;m &aacute;t đi c&aacute;c m&ugrave;i hơi v&agrave; gi&uacute;p tạo hương thơm nhẹ nh&agrave;ng tr&ecirc;n xe để người sử dụng c&oacute; thể c&oacute; được cảm gi&aacute;c thoải m&aacute;i khi ngồi tr&ecirc;n xe.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"kinh-nghiem-chon-mui-nuoc-hoa-o-to\" height=\"650\" src=\"https://i.imgur.com/MEcJWqg.jpg\" width=\"650\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">H&igrave;nh 1. M&ugrave;i nước hoa tr&ecirc;n &ocirc; t&ocirc; cần phải lựa chọn thật tinh tế</span></span></em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:22px\"><span style=\"font-family:Times New Roman,Times,serif\">Dưới đ&acirc;y l&agrave; một số kinh nghiệm chọn m&ugrave;i nước hoa bạn n&ecirc;n biết để lựa chọn cho xe của m&igrave;nh:</span></span></strong></h2>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Nước hoa bạn mua cần c&oacute; nguồn gốc r&otilde; r&agrave;ng v&agrave; đảm bảo sức khỏe:</span></span></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Bạn tuyệt đối đừng v&igrave; gi&aacute; cả rẻ m&agrave; mua c&aacute;c loại nước hoa tr&ocirc;i nổi kh&ocirc;ng c&oacute; nh&atilde;n m&aacute;c r&otilde; r&agrave;ng ở tr&ecirc;n thị trường. N&oacute; kh&ocirc;ng những kh&ocirc;ng tạo được kh&ocirc;ng gian tho&aacute;ng m&aacute;t cho xe của bạn m&agrave; c&ograve;n đem lại t&aacute;c dụng ngược với mong muốn của người sử dụng.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Một trong những <a href=\"http://aroma-car.vn/nuoc-hoa-xit\"><span style=\"color:#16a085\"><strong>kinh nghiệm chọn m&ugrave;i nước hoa &ocirc; t&ocirc;</strong></span></a> l&agrave; những loại nước hoa kh&ocirc;ng c&oacute; xuất xứ r&otilde; r&agrave;ng thường được chế tạo bởi c&aacute;c th&agrave;nh phần kh&ocirc;ng an to&agrave;n v&agrave; c&oacute; hại với người sử dụng.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"kinh-nghiem-chon-mui-nuoc-hoa-o-to\" height=\"600\" src=\"https://i.imgur.com/zYWf3aj.jpg\" width=\"600\" /></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">H&igrave;nh 2. Nước hoa Aroma lu&ocirc;n được kh&aacute;ch h&agrave;ng đ&aacute;nh gi&aacute; cao về chất lượng</span></span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Bạn n&ecirc;n lựa chọn loại nước hoa c&oacute; th&agrave;nh phần chiết xuất từ thi&ecirc;n nhi&ecirc;n l&agrave; tốt nhất:</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Những sản phẩm chiết xuất từ tinh dầu thơm, s&aacute;p thơm, gel nước hoa đều c&oacute; thể sử dụng tốt nếu th&agrave;nh phần của n&oacute; đảm bảo chiết xuất ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Với những sản phẩm n&agrave;y, bạn c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi sử dụng v&igrave; n&oacute; an to&agrave;n đối với sức khỏe của con người v&agrave; th&acirc;n thiện với m&ocirc;i trường xung quanh.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Lựa chọn m&ugrave;i hương nước hoa &ocirc; t&ocirc; ph&ugrave; hợp:</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">M&ugrave;i hương nước hoa &ocirc; t&ocirc; thể hiện được sở th&iacute;ch, c&aacute; t&iacute;nh của chủ xe. Do đ&oacute;, việc lựa chọn m&ugrave;i hương nước hoa rất quan trọng đối với giới đi xe hiện nay.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">M&ugrave;i nước hoa &ocirc; t&ocirc; của xe nữ v&agrave; xe nam thường kh&aacute;c nhau. Đối với nữ thường sử dụng c&aacute;c m&ugrave;i nước hoa nhẹ nh&agrave;ng v&agrave; quyến rũ. Đối với xe &ocirc; t&ocirc; do nam giới sử dụng lại thường d&ugrave;ng m&ugrave;i nước hoa mạnh mẽ, cuốn h&uacute;t.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Nếu bạn muốn biết th&ecirc;m kinh nghiệm chọn m&ugrave;i nước hoa &ocirc; t&ocirc; hay mua những loại nước hoa chất lượng tốt, c&oacute; m&ugrave;i thơm nhẹ nh&agrave;ng tự nhi&ecirc;n, c&oacute; thể sử dụng sản phẩm của Aroma car &nbsp;với địa chỉ web: <strong><a href=\"http://aroma-car.vn\"><span style=\"color:#16a085\">http://aroma-car.vn</span></a></strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-kinh-nghiem-chon-mui-nuoc-hoa-o-to-ban-nen-biet', 'Kinh nghiệm chọn mùi nước hoa ô tô bạn nên biết', 'Sử dụng nước hoa ô tô đã không còn xa lạ đối với các chủ xe hiện nay. Tuy nhiên không phải ai cũng có kinh nghiệm chọn mùi nước hoa ô tô phù hợp để đạt được hiệu quả tốt nhất.', 'Kinh nghiệm chọn mùi nước hoa ô tô bạn nên biết'),
(107, 54, 'vn', 'Icon Design: The Importance of Organizing Your Artboard', 'Organizing and keeping your artboard clean is essential. No matter if you work with a client or as a freelance designer, it’s important that your final design is neat and looks professional.', '<p>Besides, as a&nbsp;<a href=\"https://www.flaticon.com/?utm_source=blog&amp;utm_medium=blog&amp;utm_campaign=tips-flaticon-contributor-icon-design\" rel=\"noopener\" target=\"_blank\">Flaticon</a>&nbsp;contributor, your content may be rejected if it doesn&rsquo;t meet our standards. So these are some good reasons why you should organize your artboard and read this post.</p>\r\n\r\n<p>Below we break down the most common errors among contributors in terms of artboard organization, and we share with you some tips on how to avoid them.</p>\r\n\r\n<h3>Common errors</h3>\r\n\r\n<h6><strong>1. Leaving icon&rsquo;s components outside the artboard</strong></h6>\r\n\r\n<p>All the elements or parts that form the icon must be inside the artboard. Think of the artboard as an empty canvas: you don&rsquo;t want to spoil the surface underneath it, do you?</p>\r\n\r\n<p>Plus, our team will reject your icons if the artboard isn&rsquo;t clean or the elements aren&rsquo;t arranged properly.</p>\r\n\r\n<p><img alt=\"unwanted elements in the artboard\" height=\"322\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/Imagen1.jpg\" width=\"886\" /></p>\r\n\r\n<h6>2. Forget reference images outside the artboard</h6>\r\n\r\n<p>Frequently, designers use text or images as a reference for their own design, which is great. However, make sure you remove them from your file before submitting your resources.</p>\r\n\r\n<p><img alt=\"common errors icon design\" height=\"322\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/Imagen2.jpg\" width=\"886\" /></p>\r\n\r\n<h6>3. Using a white square as a guide</h6>\r\n\r\n<p>Contributors sometimes insert a white square as a guide instead of using the artboard. This square isn&rsquo;t necessary, so if this happens, we&rsquo;ll reject your resources.</p>\r\n\r\n<p>Instead, use the artboard (with adequate size) for the icon creation process.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"unwanted elements in the artboard\" height=\"219\" src=\"https://www.freepik.com/blog/app/uploads/2020/02/Imagen3.png\" width=\"600\" /></p>\r\n\r\n<h6>4. Isolated nodes in the artboard</h6>\r\n\r\n<p>After finishing the design, check artwork and remove all the nodes that don&rsquo;t belong o the</p>\r\n', '', '', '', '', '', 0, 'icon-design-the-importance-of-organizing-your-artboard', 'Icon Design: The Importance of Organizing Your Artboard', 'Sử dụng nước hoa ô tô là cách làm phổ biến của giới tài xế và chủ xe hiện nay. Nếu bạn muốn biết nước hoa ô tô tốt nhất là của thương hiệu nào, xin mời xem nội dung bài viết sau đây.\r\n', 'Nước hoa ô tô tốt nhất là của thương hiệu nào'),
(108, 54, 'en', 'english version Nước hoa ô tô tốt nhất là của thương hiệu nào', 'english version Sử dụng nước hoa ô tô là cách làm phổ biến của giới tài xế và chủ xe hiện nay. Nếu bạn muốn biết nước hoa ô tô tốt nhất là của thương hiệu nào, xin mời xem nội dung bài viết sau đây.\r\n', 'english version <p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Để biết </span><a href=\"http://aroma-car.vn/kinh-nghiem-chon-mui-nuoc-hoa-o-to-ban-nen-biet\"><span style=\"color:#16a085\"><strong>nước hoa &ocirc; t&ocirc; tốt nhất</strong></span></a><span style=\"color:#000000\"> l&agrave; của thương hiệu n&agrave;y, trước ti&ecirc;n bạn cần biết c&aacute;ch để chọn được loại nước hoa chất lượng, c&oacute; m&ugrave;i thơm dễ chịu đối với người sử dụng v&agrave; an to&agrave;n đối với sức khỏe của con người cũng như m&ocirc;i trường xung quanh.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\"><img alt=\"nuoc-hoa-o-to-tot-nhat\" height=\"600\" src=\"https://i.imgur.com/wAy6fXo.jpg\" width=\"600\" /></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">H&igrave;nh 1. Nước hoa &ocirc; t&ocirc; của thương hiệu Aroma</span></span></span></em></p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:22px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Nước hoa &ocirc; t&ocirc; tốt nhất phải đảm bảo những ti&ecirc;u chuẩn g&igrave;?</span></span></span></strong></h2>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Nước hoa &ocirc; t&ocirc; tốt v&agrave; chất lượng phải đảm bảo đầy đủ c&aacute;c yếu tố sau:</span></span></span></h2>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">1. Khử m&ugrave;i:</span></span></span></strong></h3>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Xe của bạn thỉnh thoảng sẽ c&oacute; những m&ugrave;i kh&oacute; chịu khi vừa bước l&ecirc;n xe, c&oacute; thể l&agrave; bụi bẩn, m&ugrave;i thức ăn thừa, m&ugrave;i ẩm mốc,&hellip;</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Nước hoa &ocirc; t&ocirc; tốt phải đảm bảo khử được m&ugrave;i tr&ecirc;n &ocirc; t&ocirc; của bạn, ngo&agrave;i ra c&ograve;n phải tạo được hương thơm tự nhi&ecirc;n gi&uacute;p người ngồi trong xe c&oacute; được cảm gi&aacute;c thư th&aacute;i v&agrave; thoải m&aacute;i.</span></span></span></p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">2. Tạo được hương thơm dễ chịu v&agrave; thoải m&aacute;i:</span></span></span></strong></h3>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Bạn n&ecirc;n lựa chọn m&ugrave;i nước hoa dễ chịu v&agrave; được nhiều người chấp nhận, m&ugrave;i hương kh&ocirc;ng được qu&aacute; nồng sẽ tạo cảm gi&aacute;c cho một số người dị ứng với nước hoa.</span></span></span></p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">3. C&aacute;c th&agrave;nh phần trong nước hoa được chiết xuất ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n:</span></span></span></strong></h3>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Sức khỏe của bạn v&agrave; gia đ&igrave;nh l&agrave; rất quan trọng. Ch&iacute;nh v&igrave; vậy, bạn h&atilde;y lựa chọn c&aacute;c mẫu</span><a href=\"http://aroma-car.vn/nuoc-hoa-xit\"><span style=\"color:#16a085\"><strong> nước hoa &ocirc; t&ocirc; tốt nhất</strong></span></a><span style=\"color:#000000\"> được chiết xuất từ thi&ecirc;n nhi&ecirc;n để đảm bảo an to&agrave;n cho người sử dụng.</span></span></span></p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">4. Nước hoa thể hiện được đẳng cấp của người sử dụng:</span></span></span></strong></h3>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Nước hoa tốt nhất l&agrave; phải đảm bảo khi sử dụng kh&ocirc;ng chỉ l&agrave;m cho người d&ugrave;ng thấy thoải m&aacute;i v&igrave; m&ugrave;i hương của n&oacute; m&agrave; c&ograve;n phải thể hiện được c&aacute; t&iacute;nh v&agrave; phong c&aacute;ch của chủ xe.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Sử dụng nước hoa &ocirc; t&ocirc; s&agrave;nh điệu ch&iacute;nh l&agrave; thể hiện đẳng cấp của giới chơi xe hiện nay tr&ecirc;n thị trường.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\"><img alt=\"nuoc-hoa-o-to-tot-nhat\" height=\"600\" src=\"https://i.imgur.com/ZdQs5iK.jpg\" width=\"600\" /></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">H&igrave;nh 2. Nước hoa &ocirc; t&ocirc; của thương hiệu Aroma</span></span></span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Nếu bạn muốn c&oacute; được c&aacute;c mẫu nước hoa &ocirc; t&ocirc; tốt nhất thương hiệu, đẳng cấp v&agrave; chất lượng, h&atilde;y t&igrave;m đến với thương hiệu Aroma.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Địa chỉ web của n&oacute; l&agrave;:</span><strong><span style=\"color:#16a085\"> </span><a href=\"http://aroma-car.vn/\"><span style=\"color:#16a085\">http://aroma-car.vn/</span></a></strong></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Đến với nước hoa Aroma bạn sẽ biết được thể n&agrave;o l&agrave; nước hoa &ocirc; t&ocirc; đẳng cấp thật sự của những người s&agrave;nh điệu.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\n&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><br />\r\n&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-nuoc-hoa-o-to-tot-nhat-la-cua-thuong-hieu-nao', 'Nước hoa ô tô tốt nhất là của thương hiệu nào', 'Sử dụng nước hoa ô tô là cách làm phổ biến của giới tài xế và chủ xe hiện nay. Nếu bạn muốn biết nước hoa ô tô tốt nhất là của thương hiệu nào, xin mời xem nội dung bài viết sau đây.\r\n', 'Nước hoa ô tô tốt nhất là của thương hiệu nào');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci,
  `orders_receiver_email` text COLLATE utf8_unicode_ci,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci,
  `orders_receiver_address` text COLLATE utf8_unicode_ci,
  `orders_receiver_note` text COLLATE utf8_unicode_ci,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `product_name` text COLLATE utf8_unicode_ci,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `price_1` bigint(20) NOT NULL,
  `price_2` bigint(20) NOT NULL,
  `price_3` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `package`
--

INSERT INTO `package` (`id`, `num`, `price_1`, `price_2`, `price_3`) VALUES
(1, 20, 200000, 500000, 900000),
(2, 100, 300000, 800000, 1500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci,
  `page_des` text COLLATE utf8_unicode_ci,
  `page_content` text COLLATE utf8_unicode_ci,
  `page_img` text COLLATE utf8_unicode_ci,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `page_sub_info1` text COLLATE utf8_unicode_ci,
  `page_sub_info2` text COLLATE utf8_unicode_ci,
  `page_sub_info3` text COLLATE utf8_unicode_ci,
  `page_sub_info4` text COLLATE utf8_unicode_ci,
  `page_sub_info5` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(35, 'Aroma Car - Mùi hương tuyệt vời khó quên', 'Trên những chặng đường lái xe, bạn cần có được một tinh thần sảng khoái và minh mẫn nhất. Dòng nước hoa ô tô cao cấp Aroma Car với mùi hương tươi mát đến từ Pháp sẽ là người bạn đồng hành tuyệt vời trong chuyến đi của bạn. ', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Kh&ocirc;ng gian trong &ocirc; t&ocirc; thường xuy&ecirc;n gặp t&igrave;nh trạng bụi bẩn v&agrave; ẩm mốc tấn c&ocirc;ng, dẫn đến nhiều m&ugrave;i kh&oacute; chịu, g&acirc;y ảnh hưởng đến hiệu suất l&aacute;i xe v&agrave; sức khỏe của những người b&ecirc;n trong xe. Ch&iacute;nh v&igrave; thế c&aacute;c d&ograve;ng sản phẩm nước hoa d&agrave;nh cho &ocirc; t&ocirc; ra đời với c&ocirc;ng dụng l&agrave;m sạch bầu kh&ocirc;ng kh&iacute; , mang lại hương thơm tươi m&aacute;t Nước hoa Aroma Car được biết đến l&agrave; sản phẩm m&ugrave;i hương cao cấp đến từ Ph&aacute;p, d&agrave;nh ri&ecirc;ng cho chiếc xe &ocirc; t&ocirc; của kh&aacute;ch h&agrave;ng. Trong suốt nhiều năm qua, Aroma Car lu&ocirc;n vinh dự trở th&agrave;nh thương hiệu nước hoa &ocirc; t&ocirc; được ưa chuộng nhất tr&ecirc;n to&agrave;n thế giới. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:22px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Khởi đầu v&agrave; sự ph&aacute;t triển Aroma Car:</span></span></span></strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Aroma Car l&agrave; một trong những thương hiệu nước hoa cao cấp d&agrave;nh ri&ecirc;ng cho &ocirc; t&ocirc; c&oacute; xuất xứ từ Ph&aacute;p. Được biết đến l&agrave; xứ xở của c&aacute;c m&ugrave;i hương, Ph&aacute;p lu&ocirc;n cho ra đời những d&ograve;ng nước hoa tuyệt vời nhất, được nhiều kh&aacute;ch h&agrave;ng tr&ecirc;n thế giới đ&oacute;n nhận. Sản phẩm Aroma Car cũng kh&ocirc;ng l&agrave; ngoại lệ với những m&ugrave;i hương thơm độc đ&aacute;o c&ugrave;ng sự an to&agrave;n cho sức khỏe người sử dụng. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Nước hoa &ocirc; t&ocirc; Aroma Car được chiết xuất từ 100% nguy&ecirc;n liệu thi&ecirc;n nhi&ecirc;n, tạo n&ecirc;n hương thơm dịu m&aacute;t v&agrave; ho&agrave;n to&agrave;n kh&ocirc;ng g&acirc;y ảnh hưởng đến sức khỏe của những người b&ecirc;n trong xe &ocirc; t&ocirc;.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"aromar-car\" height=\"276\" src=\"https://i.imgur.com/FUEw4IC.png\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Aroma Car l&agrave; một trong những thương hiệu nước hoa &ocirc; t&ocirc; lớn đến từ Ph&aacute;p</span></span></span></em></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Th&ecirc;m v&agrave;o đ&oacute;, hương thơm của Aroma Car cũng c&oacute; nhiều t&aacute;c động đến tinh thần của con người, gi&uacute;p người l&aacute;i xe c&oacute; được cảm gi&aacute;c sảng kho&aacute;i, tập trung hơn khi ngồi tr&ecirc;n tay l&aacute;i, giảm thiểu tối đa những sự cố c&oacute; thể xảy ra trong qu&aacute; tr&igrave;nh sử dụng &ocirc; t&ocirc;. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Trải qua nhiều năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, d&ograve;ng nước hoa &ocirc; t&ocirc; Aromar Car đ&atilde; chinh phục được rất nhiều kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh tr&ecirc;n thị trường thế giới. Đồng thời biến thương hiệu n&agrave;y trở th&agrave;nh một trong những thương hiệu nước hoa &ocirc; t&ocirc; h&agrave;ng đầu thế giới. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:22px\"><strong><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Những loại nước hoa Aroma Car để người d&ugrave;ng lựa chọn:</span></span></strong></strong></span></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">1.Nước hoa Aroma Car dạng Gel:</span></span></span></strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Dạng Gel l&agrave; một trong những dạng nước hoa &ocirc; t&ocirc; phổ biến được nhiều kh&aacute;ch h&agrave;ng ưa chuộng sử dụng. Với ưu điểm l&agrave; khả năng lưu giữ hương l&acirc;u, loại bỏ được hầu hết những m&ugrave;i kh&oacute; chịu b&ecirc;n trong chiếc xe của bạn. Thời gian sử dụng l&acirc;u. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"aroma-car\" height=\"600\" src=\"https://i.imgur.com/21qvD90.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Sản phẩm nước hoa &ocirc; t&ocirc; Aroma Car dạng Gel</span></span></span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">2.Nước hoa &ocirc; t&ocirc; Aroma Car dạng tinh dầu:</span></span></span></strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Sản phẩm Aroma Car dạng tinh dầu treo với nhiều ưu điểm trong hương thơm đặc trưng c&ugrave;ng kiểu thiết kế mới lạ, c&oacute; thể d&ugrave;ng để trang tr&iacute; v&agrave; gi&uacute;p chiếc xe hơi của bạn tr&ocirc;ng bắt mắt hơn. Sản phẩm c&oacute; nhiều k&iacute;ch cỡ v&agrave; m&agrave;u sắc kh&aacute;c nhau để bạn lựa chọn. </span></span></span></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"aroma-car\" height=\"600\" src=\"https://i.imgur.com/jzsGMaf.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Sản phẩm nước hoa Aroma Car dạng tinh dầu</span></span></span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">3.Nước hoa &ocirc; t&ocirc; dạng s&aacute;p Aroma Car Organic:</span></span></span></strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Sản phẩm nước hoa &ocirc; t&ocirc; dạng s&aacute;p Organic c&oacute; h&igrave;nh d&aacute;ng rất nhỏ gọn c&ugrave;ng m&ugrave;i hương đa dạng để kh&aacute;ch h&agrave;ng c&oacute; thể lựa chọn cho chiếc xe của m&igrave;nh. Với nguy&ecirc;n liệu 100% từ thi&ecirc;n nhi&ecirc;n, gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; được khoảng thời gian thoải m&aacute;i nhất tr&ecirc;n &ocirc; t&ocirc;. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"aroma-car\" height=\"600\" src=\"https://i.imgur.com/F9uMqex.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Sản phẩm nước hoa Aroma Car dạng s&aacute;p tiện dụng</span></span></span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">4.Nước hoa &ocirc; t&ocirc; c&agrave;i cửa gi&oacute; Aroma Car Speed:</span></span></span></strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Đối với những bạn ưa chuộng phong c&aacute;ch thể thao, năng động th&igrave; sản phẩm nước hoa &ocirc; t&ocirc; Aroma Speed sẽ l&agrave; sự lựa chọn ho&agrave;n hảo. T&ocirc;ng m&agrave;u chủ đạo của sản phẩm l&agrave; đen v&agrave; xanh, gi&uacute;p kh&ocirc;ng gian &ocirc; t&ocirc; của bạn trở n&ecirc;n hiện đại, sang trọng hơn v&agrave; đem đến m&ugrave;i hương tuyệt vời.</span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"600\" src=\"https://i.imgur.com/zswclQ3.jpg\" width=\"600\" /></p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">5.Nước hoa &ocirc; t&ocirc; Aroma Car dạng chai xịt:</span></span></span></strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"600\" src=\"https://i.imgur.com/2iTjwmw.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">PRESTIGE SPAY - Nước hoa &ocirc; t&ocirc; dạng xịt - m&ugrave;i hương tinh tế như ch&iacute;nh thiết kế sang trọng, hiện đại.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">- Với PRESTIGE SPAY, bạn sẽ kh&ocirc;ng mất thời gian chờ đợi bởi m&ugrave;i hương sẽ nhanh ch&oacute;ng lan tỏa đến cả kh&ocirc;ng gian nhỏ nhất trong xe của bạn. Sự kết hợp tuyệt vời giữa h&igrave;nh d&aacute;ng hiện đại v&agrave; m&ugrave;i hương m&atilde;nh liệt lu&ocirc;n chiếm được cảm t&igrave;nh cả những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</span></span></span><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">&nbsp;</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Những m&ugrave;i hương ho&agrave;n hảo, dịu nhẹ nhưng khiến cho người d&ugrave;ng nhớ m&atilde;i, Aroma Car đ&atilde; l&agrave; người bạn đồng h&agrave;nh của h&agrave;ng triệu chiếc &ocirc; t&ocirc; tr&ecirc;n to&agrave;n thế giới.</span></span></span></p>\r\n', 'pa5.jpg', '2017-05-11 16:05:22', '2018-05-16 10:05:12', 1, '', '', '', '', '', 'Aroma Car', 'Giới thiệu', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..', 'gioi-thieu-vn', 1),
(36, 'Chuyển giao công nghệ', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', 'pa4.jpg', '2017-05-11 16:05:03', '2018-04-07 11:04:55', 1, '', '', '', '', '', 'báo giá dịch vụ', 'Báo giá', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"', 'chuyen-giao-cong-nghe', 1),
(37, 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', 'pa3.jpg', '2017-05-18 02:05:05', '2017-12-03 17:12:45', 1, '', '', '', '', '', 'tuyên cộng tác viên', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', 'tuyen-cong-tac-vien', 1),
(39, 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h1>Ti&ecirc;u đề tin tức</h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\">M&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/slide1.jpg\" /></p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/formImgCate.jpg\" /></p>\r\n', 'pa2.jpg', '2017-07-10 15:07:50', '2017-12-03 17:12:33', 1, '', '', '', '', '', '', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế', 'cau-hoi-thuong-gap', 1),
(40, 'Chính sách bảo mật', '', '<h2>DP GREEN-PHAR cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của tất cả kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>Cảm ơn bạn đ&atilde; truy cập website: www.greenphar.com<br />\r\nCh&uacute;ng t&ocirc;i hiểu r&otilde; tầm quan trọng của sự ri&ecirc;ng tư v&agrave; sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản để biết những thay đổi.</p>\r\n\r\n<h2>Điều 1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin</h2>\r\n\r\n<h3>1.1. Mục đ&iacute;ch thu thập th&ocirc;ng tin:</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i thực hiện việc thu thập th&ocirc;ng tin của bạn th&ocirc;ng qua website n&agrave;y nhằm:<br />\r\nDP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nGiải đ&aacute;p thắc mắc của bạn về vấn đề c&aacute;c bệnh m&agrave; bạn thắc mắc v&agrave; quan t&acirc;m.<br />\r\nGiới thiệu c&aacute;c h&agrave;ng h&oacute;a v&agrave; dịch vụ c&oacute; thể ph&ugrave; hợp với c&aacute;c nhu cầu v&agrave; sở th&iacute;ch của bạn.<br />\r\nCung cấp những th&ocirc;ng tin mới nhất của website.<br />\r\nXem x&eacute;t v&agrave; n&acirc;ng cấp nội dung, giao diện của website.<br />\r\nThực hiện hoạt động khảo s&aacute;t kh&aacute;ch h&agrave;ng.<br />\r\nThực hiện c&aacute;c hoạt động quảng b&aacute; sản phẩm v&agrave; giới thiệu những chương tr&igrave;nh khuyến m&atilde;i.<br />\r\nGiải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website.<br />\r\nCh&uacute;ng t&ocirc;i bảo lưu quyền từ chối tr&aacute;ch nhiệm về bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh nếu th&ocirc;ng tin c&aacute; nh&acirc;n của bạn bị đ&aacute;nh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.</p>\r\n\r\n<h3>1.2. Phạm vi thu thập th&ocirc;ng tin c&aacute; nh&acirc;n:</h3>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i thu thập của bạn khi bạn gửi thắc mắc về cho ch&uacute;ng t&ocirc;i, bao gồm:<br />\r\nHọ, t&ecirc;n, Năm sinh.<br />\r\nĐịa chỉ li&ecirc;n hệ.<br />\r\nĐiện thoại li&ecirc;n hệ.<br />\r\nEmail.<br />\r\nTh&ocirc;ng tin bệnh l&yacute; v&agrave; những thắc mắc về bệnh học li&ecirc;n quan.</p>\r\n\r\n<h2>Điều 2. Phạm vi sử dụng th&ocirc;ng tin</h2>\r\n\r\n<p>Th&ocirc;ng tin của bạn được sử dụng để ch&uacute;ng t&ocirc;i hoặc c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan kh&aacute;c c&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu của bạn.<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n hệ với bạn hoặc giới thiệu bạn đến c&aacute;c cuộc nghi&ecirc;n cứu bao gồm nghi&ecirc;n cứu sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng, thị trường, nội dung c&aacute; nh&acirc;n kh&aacute;c, hoặc c&oacute; li&ecirc;n quan đến một số giao dịch nhất định.<br />\r\nCh&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin về truy cập website của bạn gồm những th&ocirc;ng tin c&oacute; thể nhận biết v&agrave; kh&ocirc;ng thể nhận biết để ph&acirc;n t&iacute;ch (v&iacute; dụ: dữ liệu ph&acirc;n t&iacute;ch việc truy cập website, &hellip;).<br />\r\nTh&ocirc;ng tin của bạn được sử dụng để gi&uacute;p cung cấp cho c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể cung cấp th&ocirc;ng tin cho c&aacute;c c&ocirc;ng ty đại diện ch&uacute;ng t&ocirc;i. Những c&ocirc;ng ty n&agrave;y cũng chịu sự r&agrave;ng buộc nghi&ecirc;m ngặt bởi Ch&iacute;nh s&aacute;ch Bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>Điều 3. Thời gian lưu trữ th&ocirc;ng tin</h2>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n c&aacute;c hệ thống quản l&yacute;, lưu trữ dữ liệu của ch&uacute;ng t&ocirc;i hoặc ch&uacute;ng t&ocirc;i thu&ecirc; trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch thu thập hoặc khi bạn c&oacute; y&ecirc;u cầu hủy c&aacute;c th&ocirc;ng tin đ&atilde; cung cấp.</p>\r\n\r\n<h2>Điều 4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐịa chỉ: Số 19, Ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội.<br />\r\nĐiện thoại: (024) 6262.7731<br />\r\nEmail: dpgreenphar@gmail.com</p>\r\n\r\n<h2>Điều 5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh.</h2>\r\n\r\n<p>Bạn c&oacute; thể tự đăng nhập v&agrave;o website qua link www.greenphar.com &nbsp;v&agrave; chỉnh sửa c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n như: t&ecirc;n, số điện thoại, địa chỉ giao-nhận h&agrave;ng, ...<br />\r\nNếu bạn kh&ocirc;ng quan t&acirc;m hoặc kh&ocirc;ng muốn nhận tin tức, th&ocirc;ng tin, bạn c&oacute; thể thay đổi th&ocirc;ng tin của bạn v&agrave;o bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch gửi email về cho ch&uacute;ng t&ocirc;i qua địa chỉ email: cskh@greenphar.com</p>\r\n\r\n<h2>Điều 6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Ngo&agrave;i việc sử dụng c&aacute;c th&ocirc;ng tin của bạn v&agrave;o c&aacute;c mục đ&iacute;ch n&ecirc;u tại Khoản 1.1 Điều 1 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y v&agrave; phạm vi n&ecirc;u tại Điều 2 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y, Ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.&nbsp;Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản n&agrave;y để biết những thay đổi.<br />\r\n<strong>Ch&iacute;nh s&aacute;ch bảo mật tại DP GREEN- PHAR</strong><br />\r\n- DP GREEN-PHAR c&oacute; thể thay đổi ch&iacute;nh s&aacute;ch bảo mật v&agrave; mọi thay đổi sẽ được c&ocirc;ng khai tr&ecirc;n website www.greenphar.com<br />\r\n- Tất cả c&aacute;c thay đổi về ch&iacute;nh s&aacute;ch bảo mật ch&uacute;ng t&ocirc;i đều tu&acirc;n thủ theo quy định của Ph&aacute;p Luật Nh&agrave; Nước hiện h&agrave;nh.<br />\r\n- Mọi &yacute; kiến thắc mắc, khiếu nại v&agrave; tranh chấp vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262. 7731</strong><br />\r\n<br />\r\nTr&acirc;n trọng,<br />\r\n<strong>DP GREEN- PHAR: Chu Đ&aacute;o, Tin Cậy!</strong></p>\r\n', 'pa1.jpg', '2017-07-10 22:07:44', '2017-12-03 17:12:20', 1, '', '', '', '', '', '', 'Chính sách bảo mật', '', 'chinh-sach-bao-mat', 1),
(41, 'Chính sách đổi - trả', '', '<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng chắc chắn rằng sản phẩm y&ecirc;u cầu đổi (trả) thỏa m&atilde;n điều kiện đổi trả h&agrave;ng của DP GREEN- PHAR tại ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng h&oacute;a như sau:<br />\r\n<strong><em>C&aacute;c trường hợp được quyền đổi - trả sản phẩm:</em></strong><br />\r\nĐổi - trả do đơn h&agrave;ng sai hoặc thiếu sản phẩm so với th&ocirc;ng tin đặt h&agrave;ng.<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi do qu&aacute; tr&igrave;nh vận chuyển (hộp thuốc bị bể, ẩm mốc,&hellip;).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi sản xuất (nh&atilde;n m&aacute;c kh&ocirc;ng r&otilde; chữ, th&ocirc;ng tin tr&ecirc;n bao b&igrave; sản phẩm kh&ocirc;ng ch&iacute;nh x&aacute;c, sản phẩm đ&atilde; bị mở trước khi đến tay kh&aacute;ch h&agrave;ng...).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền do lỗi giao h&agrave;ng sản phẩm hết hạn sử dụng.<br />\r\n<strong><em>Điều kiện bắt buộc:</em></strong><br />\r\nSản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng, c&ograve;n nguy&ecirc;n hộp, tem, m&aacute;c, seal (seal vỏ hộp v&agrave; seal chai thuốc).<br />\r\nTrong trường hợp Kh&aacute;ch h&agrave;ng đ&atilde; khui seal vỏ hộp v&agrave; ph&aacute;t hiện chai thuốc c&oacute; lỗi sản xuất, vui l&ograve;ng chụp h&igrave;nh v&agrave; gọi Hotline để BP CSKH hướng dẫn th&ecirc;m.<br />\r\nĐối với c&aacute;c sản phẩm đ&atilde; khui seal chai thuốc, DP GREEN- PHAR xin được từ chối đổi trả.<br />\r\nQu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN- PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<h2>Thời hạn đổi trả h&agrave;ng</h2>\r\n\r\n<p>Sau khi nhận được sản phẩm của kh&aacute;ch h&agrave;ng gửi trả, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng sẽ tiến h&agrave;nh kiểm tra chất lượng sản phẩm ngay lập tức. Quy tr&igrave;nh kiểm tra h&agrave;ng đổi trả được thực hiện trong v&ograve;ng từ 1-3 ng&agrave;y l&agrave;m việc, kết quả kiểm tra sẽ được th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng qua email v&agrave; tin nhắn điện thoại sau khi ho&agrave;n tất.<br />\r\nSau khi nhận được email hoặc tin nhắn th&ocirc;ng b&aacute;o từ DP GREEN- PHAR, kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra t&igrave;nh trạng đổi trả hoặc ho&agrave;n tiền th&ocirc;ng qua c&ocirc;ng cụ kiểm tra đơn h&agrave;ng của&nbsp;<strong>DP GREEN-PHAR</strong>.</p>\r\n\r\n<h2>Phương thức đổi trả h&agrave;ng đ&atilde; mua</h2>\r\n\r\n<p><strong><em>Bước 1:</em></strong> Đăng k&iacute;<br />\r\nKh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR qua hotline (024) 6262.7731 hoặc truy cập trang web: WWW.GREENPHAR.COM &nbsp;v&agrave; cung cấp th&ocirc;ng tin chi tiết về sản phẩm lỗi gồm:<br />\r\n- T&ecirc;n sản phẩm<br />\r\n- M&atilde; số đơn h&agrave;ng, l&ocirc; sản xuất, hạn sử dụng<br />\r\n- Lỗi sản phẩm (m&ocirc; tả chi tiết v&agrave; k&egrave;m ảnh chụp)<br />\r\n<strong><em>Bước 2:</em></strong> Nhận tin nhắn x&aacute;c nhận đ&atilde; đăng k&yacute; đổi/trả th&agrave;nh c&ocirc;ng v&agrave; email hướng dẫn đ&oacute;ng g&oacute;i sản phẩm ho&agrave;n trả.<br />\r\nSau khi y&ecirc;u cầu đổi/trả được chấp nhận, DP GREEN-PHAR sẽ gửi đến qu&yacute; kh&aacute;ch một tin nhắn v&agrave; email hướng dẫn c&aacute;ch gửi trả sản phẩm.<br />\r\n<strong><em>Bước 3:</em></strong> Đ&oacute;ng g&oacute;i theo hướng dẫn v&agrave; mang sản phẩm đến Bưu Điện<br />\r\n<strong><em>Bước 4:</em></strong> Gửi trả sản phẩm về DP GREEN-PHAR<br />\r\nKh&aacute;ch h&agrave;ng vui l&ograve;ng gửi sản phẩm qua đường Bưu Điện về DP GREEN-PHAR trong v&ograve;ng 3 ng&agrave;y l&agrave;m việc kể từ khi th&ocirc;ng b&aacute;o với bộ phận Chăm S&oacute;c Kh&aacute;ch H&agrave;ng v&agrave; gửi k&egrave;m:<br />\r\n- H&oacute;a đơn mua h&agrave;ng hoặc đ&iacute;nh k&egrave;m giấy ghi ch&uacute; c&oacute; m&atilde; đơn h&agrave;ng<br />\r\n- H&oacute;a đơn gi&aacute; trị gia tăng (nếu c&oacute;)<br />\r\n- Phụ kiện đi k&egrave;m sản phẩm v&agrave; tặng khuyến m&atilde;i k&egrave;m theo (nếu c&oacute;)<br />\r\n<strong><em>Một số lưu &yacute; khi gửi h&agrave;ng đến bưu điện:</em></strong><br />\r\n- Kh&ocirc;ng ni&ecirc;m phong bề mặt th&ugrave;ng ​trước khi ho&agrave;n tất qu&aacute; tr&igrave;nh gửi h&agrave;ng ​v&igrave; c&oacute; thể bưu điện cần kiểm tra trước khi nhận h&agrave;ng. Đ&oacute;ng g&oacute;i, ch&egrave;n l&oacute;t sản phẩm như ban đầu.<br />\r\n- Cung cấp cho nh&acirc;n vi&ecirc;n bưu điện m&atilde; đơn h&agrave;ng v&agrave; m&atilde; gửi h&agrave;ng b&ecirc;n DP GREEN-PHAR đ&atilde; cung cấp. - Lưu &yacute; kh&ocirc;ng d&aacute;n băng keo trực tiếp l&ecirc;n hộp sản phẩm v&igrave; y&ecirc;u cầu đổi/trả c&oacute; thể sẽ bị từ chối nếu hộp sản phẩm bị hư hỏng.<br />\r\n- Vui l&ograve;ng li&ecirc;n hệ Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR &nbsp;(024) 6262. 7731&nbsp;khi c&oacute; bất cứ kh&oacute; khăn xảy ra trong qu&aacute; tr&igrave;nh l&agrave;m việc với bưu điện.<br />\r\n- Điền th&ocirc;ng tin m&atilde; số đơn h&agrave;ng l&ecirc;n th&ugrave;ng h&agrave;ng v&agrave; gửi về DP GREEN- PHAR theo địa chỉ nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng đ&atilde; cung cấp.<br />\r\n<strong>Note:</strong>&nbsp;<em>Trong trường hợp kh&ocirc;ng nhớ th&ocirc;ng tin ở bước số 4, qu&yacute; kh&aacute;ch c&oacute; thể xuất tr&igrave;nh tin nhắn hoặc email nhận được từ DP GREEN- PHAR đ&atilde; gửi (ở bước 2) cho nh&acirc;n vi&ecirc;n bưu điện v&agrave; l&agrave;m theo hướng dẫn.</em><br />\r\n<span style=\"color:#cc0000\">Lưu &yacute;:</span> Kh&aacute;ch h&agrave;ng trong qu&aacute; tr&igrave;nh gửi trả sản phẩm về DP GREEN-PHAR sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm về trạng th&aacute;i nguy&ecirc;n vẹn của sản phẩm.<br />\r\nSau khi nhận được sản phẩm kh&aacute;ch h&agrave;ng gửi trả về, DP GREEN- PHAR sẽ phản hồi v&agrave; cập nhật th&ocirc;ng tin tr&ecirc;n từng giai đoạn xử l&yacute; đến kh&aacute;ch h&agrave;ng qua email hoặc sms.</p>\r\n\r\n<h2>C&aacute;ch thức nhận lại tiền khi mua h&agrave;ng online</h2>\r\n\r\n<h3>Kh&aacute;ch h&agrave;ng sẽ nhận được số tiền ho&agrave;n trả sau bao l&acirc;u?</h3>\r\n\r\n<p>DP GREEN- PHAR sẽ ho&agrave;n tiền cho kh&aacute;ch h&agrave;ng trong trường hợp kh&aacute;ch h&agrave;ng trả hay hủy đơn h&agrave;ng.<br />\r\nPhương thức ho&agrave;n tiền bằng c&aacute;ch chuyển khoản ng&acirc;n h&agrave;ng.<br />\r\nTh&ocirc;ng tin sẽ được cập nhật đến cho qu&yacute; kh&aacute;ch bằng email hoặc SMS khi thủ tục ho&agrave;n tiền được tiến h&agrave;nh.<br />\r\n<strong>Phương thức ho&agrave;n tiền:</strong> Chuyển khoản ng&acirc;n h&agrave;ng<br />\r\n<strong>Thời gian ho&agrave;n tiền:</strong> 3 - 5 ng&agrave;y l&agrave;m việc<br />\r\nTrong trường hợp đ&atilde; vượt qu&aacute; c&aacute;c khoảng thời gian ho&agrave;n tiền tr&ecirc;n nhưng kh&aacute;ch h&agrave;ng vẫn chưa nhận được tiền, xin vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng để được hỗ trợ hoặc Tổng đ&agrave;i Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR&nbsp;<strong>(024) 6262.7731</strong></p>\r\n\r\n<h3>Chi ph&iacute; cho việc đổi trả h&agrave;ng</h3>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n tiền ph&iacute; vận chuyển khi Kh&aacute;ch h&agrave;ng thực hiện gửi h&agrave;ng tại bưu điện. DP GREEN- PHAR sẽ kh&ocirc;ng ho&agrave;n trả chi ph&iacute; n&agrave;y. Tuy nhi&ecirc;n sẽ giao h&agrave;ng miễn ph&iacute; đối với những đơn h&agrave;ng thuộc nh&oacute;m &ldquo;Đổi h&agrave;ng&quot;. Nếu c&oacute; bất k&igrave; vấn đề g&igrave; ph&aacute;t sinh, qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ với bộ phận CSKH của DP GREEN-PHAR theo Hotline&nbsp;<strong>(024) 6262.7731</strong></p>\r\n', 'pa5.jpg', '2017-07-10 22:07:03', '2017-12-03 17:12:06', 1, '', '', '', '', '', '', 'Chính sách đổi - trả', '', 'chinh-sach-doi-tra', 1),
(42, 'Hệ thống nhà thuốc', '', '<p>T&acirc;t cả c&aacute;c sản phẩm của DP GREEN-PHAR&nbsp;đ&atilde; được ph&acirc;n phối tại hơn 1000 nh&agrave; thuốc tại c&aacute;c tỉnh th&agrave;nh tr&ecirc;n khắp miền bắc<br />\r\nVui l&ograve;ng li&ecirc;n hệ tổng đ&agrave;i CSKH: <em><strong>024. 6262.7731</strong></em> để biết địa chỉ nh&agrave; thuốc gần nhất nơi bạn ở.<br />\r\nXin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng sản phẩm của <strong>DP GREEN-PHAR</strong>.</p>\r\n', 'pa4.jpg', '2017-07-10 22:07:22', '2017-12-03 17:12:52', 1, '', '', '', '', '', '', 'Hệ thống nhà thuốc', '', 'he-thong-nha-thuoc', 1),
(43, 'Hình thức giao hàng', '', '<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN- PHAR sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; gửi email/sms về th&ocirc;ng tin đơn h&agrave;ng trong thời gian sớm nhất. Hiện tại DP GREEN-PHAR hợp t&aacute;c với ViettelPost - đơn vị chuyển ph&aacute;t h&agrave;ng đầu tại Việt Nam để thực hiện chuyển ph&aacute;t c&aacute;c sản phẩm tới Qu&yacute; kh&aacute;ch h&agrave;ng.<br />\r\nSau khi x&aacute;c nhận th&agrave;nh c&ocirc;ng, đơn h&agrave;ng sẽ được giao đến Qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y: <strong>Tại Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội:</strong> Giao h&agrave;ng sau 1 - 4h l&agrave;m việc<br />\r\n<strong>C&aacute;c khu vực tỉnh, th&agrave;nh c&ograve;n lại:</strong> Giao h&agrave;ng sau 1 - 2 ng&agrave;y l&agrave;m việc<br />\r\n<em>*Lưu &yacute;: thời gian giao h&agrave;ng dự kiến ở tr&ecirc;n chỉ &aacute;p dụng cho c&aacute;c đơn h&agrave;ng trong nước.</em> Tất cả c&aacute;c đơn h&agrave;ng từ khắp cả nước sẽ được chia l&agrave;m 2 khu vực v&agrave; ph&iacute; vận chuyển &aacute;p dụng cho tất cả c&aacute;c đơn h&agrave;ng của Qu&yacute; kh&aacute;ch (trong đ&oacute;, DP GREEN-PHAR đ&atilde; hỗ trợ 50-70% chi ph&iacute; giao h&agrave;ng v&agrave; ph&iacute; thu tiền hộ):<br />\r\n<strong>Khu vực 1:</strong>&nbsp;Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội l&agrave; 10.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>Khu vực 2:</strong>&nbsp;C&aacute;c tỉnh, th&agrave;nh phố c&ograve;n lại tr&ecirc;n to&agrave;n quốc l&agrave; 20.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>FREE SHIP NẾU ĐƠN H&Agrave;NG TR&Ecirc;N 600.000 VNĐ.</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN-PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao h&agrave;ng c&oacute; thể ph&aacute;t sinh những vấn đề ngo&agrave;i &yacute; muốn về ph&iacute;a Kh&aacute;ch h&agrave;ng khiến việc giao h&agrave;ng bị chậm trễ. DP GREEN-PHAR sẽ linh động giải quyết cho Kh&aacute;ch h&agrave;ng trong từng trường hợp như sau:<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cung cấp ch&iacute;nh x&aacute;c v&agrave; đầy đủ địa chỉ giao h&agrave;ng v&agrave; số điện thoại li&ecirc;n lạc.<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng sẵn s&agrave;ng để nhận h&agrave;ng v&agrave;o thời điểm giao h&agrave;ng.<br />\r\n- DP GREEN- PHAR đ&atilde; giao h&agrave;ng đ&uacute;ng hẹn theo th&ocirc;ng tin giao h&agrave;ng nhưng kh&ocirc;ng li&ecirc;n lạc được với Kh&aacute;ch h&agrave;ng v&agrave; chờ tại địa điểm giao h&agrave;ng qu&aacute; 15 ph&uacute;t, mọi nỗ lực của nh&acirc;n vi&ecirc;n giao h&agrave;ng nhằm li&ecirc;n hệ với Kh&aacute;ch h&agrave;ng đều kh&ocirc;ng th&agrave;nh c&ocirc;ng.<br />\r\n- Những trường hợp bất khả kh&aacute;ng như thi&ecirc;n tai, tai nạn giao th&ocirc;ng, gi&aacute;n đoạn mạng lưới giao th&ocirc;ng, đứt c&aacute;p, hệ thống bị tấn c&ocirc;ng.<br />\r\nC&aacute;c trường hợp kh&aacute;c: Trong trường hợp xảy ra sự cố phức tạp hơn, DP GREEN- PHAR bảo đảm quyền lợi lớn nhất thuộc về Kh&aacute;ch h&agrave;ng.</p>\r\n', 'pa3.jpg', '2017-07-10 22:07:41', '2017-12-03 17:12:42', 1, '', '', '', '', '', '', 'Hình thức giao hàng', '', 'hinh-thuc-giao-hang', 1),
(44, 'Hình thức thanh toán', '', '<h2>DP GREEN- PHAR hỗ trợ 4 phương thức thanh to&aacute;n cho tất cả c&aacute;c đơn h&agrave;ng tr&ecirc;n hệ thống.</h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n khi nhận h&agrave;ng (COD): </strong>Qu&yacute; kh&aacute;ch sẽ thanh to&aacute;n tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng ngay sau khi nhận được h&agrave;ng.<br />\r\n<strong>2. Thanh to&aacute;n bằng Internet Banking:</strong> Thẻ/t&agrave;i khoản ATM của qu&yacute; kh&aacute;ch c&oacute; đăng k&iacute; sử dụng dịch vụ internet banking, DP GREEN- PHAR hiện hỗ trợ thanh to&aacute;n cho phần lớn c&aacute;c ng&acirc;n h&agrave;ng tại Việt Nam:<br />\r\n<img alt=\"\" src=\"../image/pay.jpg\" /> <strong>3. Thanh to&aacute;n bằng thẻ quốc tế Visa, Master Card:</strong>&nbsp;Ph&iacute; thanh to&aacute;n t&ugrave;y thuộc v&agrave;o từng loại thẻ qu&yacute; kh&aacute;ch d&ugrave;ng v&agrave; ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ. Vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ để biết r&otilde; ph&iacute; thanh to&aacute;n ph&aacute;t sinh.<br />\r\n<strong>4. Chuyển khoản trực tiếp tại ng&acirc;n h&agrave;ng:<br />\r\nCHỦ T&Agrave;I KHOẢN: CT CỔ PHẦN DP GREEN PHAR<br />\r\nSTK: 0691000342789<br />\r\nchi nh&aacute;nh h&agrave; t&acirc;y, Vietcombank.</strong><br />\r\n&quot;T&ecirc;n người mua h&agrave;ng, Tỉnh/th&agrave;nh phố&quot; chuyển tiền cho đơn h&agrave;ng ng&agrave;y ... th&aacute;ng ... năm ...<br />\r\n<em>Mọi thắc mắc v&agrave; g&oacute;p &yacute; vui l&ograve;ng li&ecirc;n hệ Hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262.7731</strong></em></p>\r\n', 'pa2.jpg', '2017-07-10 22:07:55', '2017-12-03 17:12:31', 1, '', '', '', '', '', '', 'Hình thức thanh toán', '', 'hinh-thuc-thanh-toan', 1);
INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(45, 'Điều khoản sử dụng', '', '<h2>1. Giới thiệu</h2>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với trang Thương mại điện tử DP GREEN-PHAR<br />\r\nGREENPHAR.COM l&agrave; trang Thương mại điện tử của C&ocirc;ng ty Cổ phần DP GREEN- PHAR - chuy&ecirc;n ph&acirc;n phối độc quyền c&aacute;c sản phẩm do Armephaco 120- x&iacute; nghiệp dược phẩm 120, qu&acirc;n đội, nghi&ecirc;n cứu v&agrave; sản xuất, được cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/4/2015<br />\r\nC&ocirc;ng ty CPDP GREEN- PHAR c&oacute; trụ sở ch&iacute;nh đặt tại 19, Ng&otilde; 4, Phố Văn La- H&agrave; Đ&ocirc;ng- H&agrave; Nội.<br />\r\nKhi bạn truy cập v&agrave;o website greenphar.com của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; bạn đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Website c&oacute; quyền chỉnh sửa, thay đổi, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Điều khoản mua b&aacute;n h&agrave;ng h&oacute;a n&agrave;y v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n website m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi bạn tiếp tục sử dụng website, sau khi c&aacute;c thay đổi về Điều khoản n&agrave;y được đăng tải, c&oacute; nghĩa l&agrave; bạn chấp nhận với những thay đổi đ&oacute; của ch&uacute;ng t&ocirc;i.<br />\r\nV&igrave; vậy, bạn vui l&ograve;ng kiểm tra thường xuy&ecirc;n v&agrave; cập nhật những thay đổi trong Điều khoản mua b&aacute;n tr&ecirc;n website của ch&uacute;ng t&ocirc;i để đảm bảo quyền lợi của m&igrave;nh.</p>\r\n\r\n<h2>2. Hướng dẫn sử dụng website</h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/Hydrangeas.jpg\" width=\"600\" /></p>\r\n\r\n<p>Khi truy cập v&agrave;o website của DP GREEN-PHAR, bạn phải đảm bảo đủ 18 tuổi, hoặc c&oacute; sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p. Vui l&ograve;ng đảm bảo bạn c&oacute; đầy đủ h&agrave;nh vi d&acirc;n sự để thực hiện c&aacute;c giao dịch mua b&aacute;n h&agrave;ng h&oacute;a theo quy định hiện h&agrave;nh của ph&aacute;p luật Việt Nam.<br />\r\nCh&uacute;ng t&ocirc;i sẽ cũng cấp cho bạn một t&agrave;i khoản (Account) sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n website greenphar.com trong khu&ocirc;n khổ Điều khoản v&agrave; Điều kiện sử dụng đ&atilde; đề ra.<br />\r\nBạn sẽ phải đăng k&yacute; t&agrave;i khoản với th&ocirc;ng tin c&aacute; nh&acirc;n x&aacute;c thực v&agrave; phải cập nhật nếu c&oacute; bất kỳ thay đổi n&agrave;o trong qu&aacute; tr&igrave;nh sử dụng. Mỗi c&aacute; nh&acirc;n khi truy cập v&agrave;o website của DP GREEN- PHAR phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. B&ecirc;n cạnh đ&oacute;, bạn phải th&ocirc;ng b&aacute;o ngay cho ch&uacute;ng t&ocirc;i biết khi t&agrave;i khoản bị truy cập tr&aacute;i ph&eacute;p. Đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do bạn kh&ocirc;ng tu&acirc;n thủ quy định v&agrave; c&aacute;c điều khoản mua b&aacute;n đ&atilde; cam kết ph&iacute;a DP GREEN-PHAR sẽ kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"221\" src=\"/image/images/Cataloge%20Rem-File%20OK%2003.jpg\" width=\"600\" /></p>\r\n\r\n<p><img alt=\"\" height=\"900\" src=\"/image/images/11___.png\" width=\"900\" /><br />\r\nNghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của website n&agrave;y dưới mọi h&igrave;nh thức với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được sự cho ph&eacute;p bằng văn bản từ ph&iacute;a DP GREEN- PHAR. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy t&agrave;i khoản của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.<br />\r\nBạn sẽ nhận được email quảng c&aacute;o từ website GREENPHAR.COM của ch&uacute;ng t&ocirc;i trong suốt qu&aacute; tr&igrave;nh đăng k&iacute;. Nếu cảm thấy bị l&agrave;m phiền, bạn c&oacute; thể từ chối nhận email bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</p>\r\n\r\n<h2>3. &Yacute; kiến của kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Tất cả nội dung tr&ecirc;n website v&agrave; những &yacute; kiến, nhận x&eacute;t ph&ecirc; b&igrave;nh của qu&yacute; kh&aacute;ch h&agrave;ng đều l&agrave; t&agrave;i sản của DP GREEN-PHAR ch&uacute;ng t&ocirc;i. Nếu ph&aacute;t hiện bất kỳ th&ocirc;ng tin giả mạo n&agrave;o, ch&uacute;ng t&ocirc;i sẽ v&ocirc; hiệu h&oacute;a t&agrave;i khoản của bạn ngay lập tức hoặc &aacute;p dụng c&aacute;c biện ph&aacute;p kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</p>\r\n\r\n<h2>4. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</h2>\r\n\r\n<p>Với bất kỳ l&yacute; do g&igrave; li&ecirc;n quan đến lỗi kỹ thuật, hệ thống một c&aacute;ch kh&aacute;ch quan v&agrave;o bất kỳ l&uacute;c n&agrave;o, ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch.<br />\r\nTrong qu&aacute; tr&igrave;nh x&aacute;c nhận đơn h&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ của bạn để thuận tiện cho giao dịch.<br />\r\nDP GREEN-PHAR cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n website hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho qu&yacute; kh&aacute;ch.<br />\r\nDP GREEN-PHAR cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o của qu&yacute; kh&aacute;ch d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; thanh to&aacute;n.</p>\r\n\r\n<h2>5. Thay đổi hoặc hủy bỏ giao dịch</h2>\r\n\r\n<p>Trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y:<br />\r\nTh&ocirc;ng b&aacute;o cho bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR về việc hủy giao dịch qua hotline (024) 6262. 7731</p>\r\n\r\n<h2>6. Giải quyết lỗi nhập sai th&ocirc;ng tin</h2>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c khi tham gia giao dịch tại website greenphar.com. Trong trường hợp kh&aacute;ch h&agrave;ng nhập sai th&ocirc;ng tin v&agrave; gửi v&agrave;o site thương mại điện tử greenphar.com, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối thực hiện giao dịch. Ngo&agrave;i ra, trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền đơn phương chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y: Li&ecirc;n hệ với bộ phậm CSKH của DP GREEN-PHAR qua hotline (024) 6262. 7731<br />\r\nTrả lại sản phẩm đ&atilde; nhận v&agrave; kh&ocirc;ng c&oacute; dấu hiệu khui mở hoặc đ&atilde; sử dụng.<br />\r\nTrong trường hợp sai th&ocirc;ng tin ph&aacute;t sinh từ ph&iacute;a DP GREEN-PHAR m&agrave; DP GREEN-PHAR c&oacute; thể chứng minh đ&oacute; l&agrave; lỗi của hệ thống, ch&uacute;ng t&ocirc;i sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm v&agrave; đền b&ugrave; cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>7. Quyền ph&aacute;p l&yacute;</h2>\r\n\r\n<p>C&aacute;c điều kiện, điều khoản v&agrave; nội dung của website n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam. T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<h2>8. Quy định về bảo mật</h2>\r\n\r\n<p>Website GREENPHAR.COM của ch&uacute;ng t&ocirc;i xem trọng việc bảo mật th&ocirc;ng tin, sử dụng c&aacute;c biện ph&aacute;p tốt nhất để bảo mật th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Trong qu&aacute; tr&igrave;nh thanh to&aacute;n, th&ocirc;ng tin của qu&yacute; kh&aacute;ch sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Bạn sẽ tho&aacute;t khỏi chế độ an to&agrave;n sau khi ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt h&agrave;ng.<br />\r\nQu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Website greenphar.com cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết.<br />\r\nMọi th&ocirc;ng tin giao dịch sẽ được bảo mật ngoại trừ trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu.</p>\r\n\r\n<h2>9. C&aacute;c phương thức thanh to&aacute;n &aacute;p dụng tại GREENPHAR.COM</h2>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể tham khảo c&aacute;c phương thức thanh to&aacute;n sau đ&acirc;y v&agrave; lựa chọn &aacute;p dụng phương thức ph&ugrave; hợp:</p>\r\n\r\n<h3>C&aacute;ch 1: Thanh to&aacute;n trực tiếp (T&igrave;m đến chuỗi nh&agrave; thuốc b&aacute;n lẻ)</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: Đến địa chỉ nh&agrave; thuốc b&aacute;n lẻ<br />\r\nBước 3: Người mua thanh to&aacute;n v&agrave; nhận h&agrave;ng</p>\r\n\r\n<h3>C&aacute;ch 2: Nhận h&agrave;ng thanh to&aacute;n tiền - COD</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 4: Giao h&agrave;ng<br />\r\nBước 5: Nhận h&agrave;ng v&agrave; thanh to&aacute;n</p>\r\n\r\n<h3>C&aacute;ch 3: Thanh to&aacute;n online qua thẻ t&iacute;n dụng, chuyển khoản</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Kh&aacute;ch h&agrave;ng thực hiện thanh to&aacute;n 100% gi&aacute; trị đơn h&agrave;ng (đơn h&agrave;ng thanh to&aacute;n th&agrave;nh c&ocirc;ng sẽ b&aacute;o qua điện thoại, tin nhắn, email)<br />\r\nBước 4: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 5: Giao h&agrave;ng<br />\r\nBước 6: Kh&aacute;ch h&agrave;ng nhận h&agrave;ng.</p>\r\n\r\n<h2>10. Giải quyết tranh chấp</h2>\r\n\r\n<p>Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến giao dịch tại greenphar.com hoặc c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết bằng h&igrave;nh thức thương lượng, h&ograve;a giải, trọng t&agrave;i v&agrave;/hoặc T&ograve;a &aacute;n theo Luật bảo vệ Người ti&ecirc;u d&ugrave;ng Chương 4 về Giải quyết tranh chấp giữa người ti&ecirc;u d&ugrave;ng v&agrave; tổ chức, c&aacute; nh&acirc;n kinh doanh h&agrave;ng h&oacute;a, dịch vụ.</p>\r\n\r\n<h2>11. Luật ph&aacute;p v&agrave; thẩm quyền tại L&atilde;nh thổ Việt Nam</h2>\r\n\r\n<p>Tất cả c&aacute;c Điều Khoản, Điều Kiện v&agrave; Hợp Đồng n&agrave;y (v&agrave; tất cả nghĩa vụ ph&aacute;t sinh ngo&agrave;i hợp đồng hoặc c&oacute; li&ecirc;n quan) sẽ bị chi phối v&agrave; được hiểu theo luật ph&aacute;p của Việt Nam. Nếu c&oacute; tranh chấp ph&aacute;t sinh bởi c&aacute;c Quy định Sử dụng n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại/khiếu kiện l&ecirc;n T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam để giải quyết.</p>\r\n', 'pa1.jpg', '2017-07-10 22:07:51', '2017-12-03 17:12:21', 1, '', '', '', '', '', '', 'Điều khoản sử dụng', '', 'dieu-khoan-su-dung', 1),
(46, 'Tuyển đại lý dòng nước hoa Pháp cao cấp dành cho xe oto', 'Tuyển đại lý dòng nước hoa Pháp Aroma Car dành riêng cho xe oto để khử mùi và mang lại hương thơm dễ chịu, sảng khoái cho người dùng.', '<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Hiện nay, ch&uacute;ng t&ocirc;i đang tuyển đại l&yacute; khắp cả nước để phấn đấu trở th&agrave;nh c&ocirc;ng ty lớn mạnh nhất trong lĩnh vực n&agrave;y, gi&uacute;p giải quyết vấn đề của kh&aacute;ch h&agrave;ng một c&aacute;ch hiệu quả, đồng thời tạo sự vững mạnh với c&aacute;c đại l&yacute; to&agrave;n quốc.</span></span></span></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:22px\"><span style=\"color:#000000\"><strong><span style=\"font-family:Times New Roman,Times,serif\">Mục ti&ecirc;u</span></strong></span></span></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- X&acirc;y dựng mối quan hệ tr&ecirc;n cơ sở cam kết hợp t&aacute;c v&agrave; chia sẻ mục ti&ecirc;u</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Hỗ trợ đ&ocirc;i b&ecirc;n c&ugrave;ng ph&aacute;t triển</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Hợp t&aacute;c c&ocirc;ng bằng, t&ocirc;n trọng lẫn nhau tr&ecirc;n to&agrave;n bộ k&ecirc;nh ph&acirc;n phối</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Đảm bảo t&iacute;nh cạnh tranh của sản phẩm về gi&aacute; v&agrave; chất lượng</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"tuyen-dai-ly\" height=\"338\" src=\"https://i.imgur.com/D9v49Dz.jpg\" width=\"600\" /></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"color:#000000\"><em><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Aroma Car hướng tới mục ti&ecirc;u x&acirc;y dựng sự vững mạnh v&agrave; ph&aacute;t triển, đ&ocirc;i b&ecirc;n c&ugrave;ng c&oacute; lợi với c&aacute;c đại l&yacute; tr&ecirc;n to&agrave;n quốc</span></span></em></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:22px\"><span style=\"color:#000000\"><strong><span style=\"font-family:Times New Roman,Times,serif\">Sản phẩm</span></strong></span></span></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Aroma Car l&agrave; d&ograve;ng sản phẩm nước hoa Ph&aacute;p cao cấp d&agrave;nh cho oto với thiết kế sang trọng, tinh tế c&ugrave;ng hương thơm dễ chịu, tươi m&aacute;t v&agrave; tạo tinh thần sảng kho&aacute;i khi l&aacute;i xe. Aroma Car l&agrave; một trong những thương hiệu nổi tiếng h&agrave;ng đầu tại ch&acirc;u &Acirc;u, dẫn đầu danh s&aacute;ch c&aacute;c sản phẩm chăm s&oacute;c c&oacute; hương thơm tốt nhất cho oto do Fobes Diamont b&igrave;nh chọn v&agrave;o năm 2017.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Th&agrave;nh phần của nước hoa Aroma Car được chiết xuất 100% bằng tinh dầu tự nhi&ecirc;n, kh&ocirc;ng h&oacute;a chất, an to&agrave;n tuyệt đối với sức khỏe của người d&ugrave;ng v&agrave; được chăm ch&uacute;t cả về mẫu m&atilde; lẫn hương thơm.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"tuyen-dai-ly\" height=\"198\" src=\"https://i.imgur.com/X9lKjFi.jpg\" width=\"600\" /></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"color:#000000\"><em><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Aroma Car &ndash; Sản phẩm ho&agrave;n to&agrave;n từ tự nhi&ecirc;n, an to&agrave;n tuyệt đối v&agrave; đem lại cảm gi&aacute;c thoải m&aacute;i, dễ chịu cho người sử dụng</span></span></em></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><strong><span style=\"font-size:22px\"><span style=\"font-family:Times New Roman,Times,serif\">Đối tượng cần hợp t&aacute;c</span></span></strong></span></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Aroma Car cần </span><a href=\"http://aroma-car.vn/\"><span style=\"color:#16a085\"><strong>tuyển đại l&yacute;</strong></span></a><span style=\"color:#000000\"> với c&ocirc;ng ty hoặc c&aacute; nh&acirc;n l&agrave;m về ng&agrave;nh xe oto như chăm s&oacute;c xe, h&atilde;ng xe oto, nội thất xe, dịch vụ về lốp xe, detailing. Ngo&agrave;i ra, Aroma Car cũng l&agrave; k&ecirc;nh ph&acirc;n phối tại c&aacute;c trung t&acirc;m thương mại, cửa h&agrave;ng mỹ phẩm, si&ecirc;u thị,&hellip;</span></span></span></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:22px\"><strong><span style=\"font-family:Times New Roman,Times,serif\">Ch&iacute;nh s&aacute;ch hỗ trợ đối với đại l&yacute;</span></strong></span></span></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Th&ocirc;ng tin về đại l&yacute; sẽ được quảng c&aacute;o c&ugrave;ng nh&agrave; ph&acirc;n phối tr&ecirc;n website của Aroma Car</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Đại l&yacute; sẽ được cập nhật th&ocirc;ng tin về gi&aacute; cả, sản phẩm, h&agrave;ng h&oacute;a, ch&iacute;nh s&aacute;ch của nh&agrave; ph&acirc;n phối, c&aacute;c t&agrave;i liệu th&uacute;c đẩy b&aacute;n h&agrave;ng cũng như c&aacute;c chương tr&igrave;nh marketing.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Đại l&yacute; sẽ trở th&agrave;nh k&ecirc;nh ph&acirc;n phối v&agrave; được Aroma Car giới thiệu kh&aacute;ch h&agrave;ng tr&ecirc;n địa b&agrave;n.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"tuyen-dai-ly\" height=\"336\" src=\"https://i.imgur.com/JZ9fhez.jpg\" width=\"600\" /></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"color:#000000\"><em><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Aroma Car c&oacute; ch&iacute;nh s&aacute;ch hỗ trợ ưu đ&atilde;i d&agrave;nh ri&ecirc;ng cho c&aacute;c đại l&yacute;</span></span></em></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:22px\"><strong><span style=\"font-family:Times New Roman,Times,serif\">Y&ecirc;u cầu đối với đại l&yacute;</span></strong></span></span></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Hỗ trợ c&aacute;c chương tr&igrave;nh quảng c&aacute;o, khuyến m&atilde;i do Aroma Car tổ chức</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Cam kết c&aacute;c kinh doanh c&aacute;c sản phẩm kh&aacute;c c&ugrave;ng loại do Aroma Car ph&acirc;n phối</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Thỏa thuận v&agrave; thống nhất về gi&aacute; trị cũng như điều khoản hợp đồng trước khi k&yacute; kết ch&iacute;nh thức</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Kiểm tra chi tiết sản phẩm khi nhận h&agrave;ng trước khi k&yacute; v&agrave;o bi&ecirc;n bản giao nhận để tr&aacute;nh c&aacute;c vấn đề ph&aacute;t sinh.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Với chiến lược c&ugrave;ng nhau ph&aacute;t triển để th&agrave;nh c&ocirc;ng, ch&uacute;ng t&ocirc;i </span></span></span><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><a href=\"http://aroma-car.vn/tuyen-dai-ly-dong-nuoc-hoa-phap-cao-cap-danh-cho-xe-oto\"><span style=\"color:#16a085\"><strong>tuyển đại l&yacute;</strong></span></a></span></span><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"> nhằm ch&agrave;o đ&oacute;n tất cả mọi đơn vị c&ugrave;ng đồng h&agrave;nh tr&ecirc;n to&agrave;n quốc để đưa sản phẩm hương thơm cao cấp d&agrave;nh cho xe oto được vươn xa hơn, tới tay mọi người ti&ecirc;u d&ugrave;ng.</span></span></span></p>\r\n', 'tuyen-dai-ly-03.jpg', '2017-12-08 14:12:11', '2018-05-05 11:05:22', 1, '', '', '', '', '', 'Tuyển đại lý dòng nước hoa Pháp cao cấp dành cho xe oto', 'Tuyển đại lý dòng nước hoa Pháp cao cấp dành cho xe oto', 'Tuyển đại lý dòng nước hoa Pháp Aroma Car dành riêng cho xe oto để khử mùi và mang lại hương thơm dễ chịu, sảng khoái cho người dùng.', 'tuyen-dai-ly-dong-nuoc-hoa-phap-cao-cap-danh-cho-xe-oto', 1),
(47, 'page test 2', '', '', '', '2017-12-08 14:12:24', NULL, 1, '', '', '', '', '', '', 'page test 2', '', 'page-test-2', 1),
(48, 'page test 3', '', '', '', '2017-12-08 14:12:34', NULL, 1, '', '', '', '', '', '', 'page test 3', '', 'page-test-3', 1),
(49, 'page test 4', '', '', '', '2017-12-08 14:12:56', NULL, 1, '', '', '', '', '', '', 'page test 4', '', 'page-test-4', 1),
(50, 'page test 5', '', '', '', '2017-12-08 14:12:09', NULL, 1, '', '', '', '', '', '', 'page test 5', '', 'page-test-5', 1),
(51, 'page test 6', '', '', '', '2017-12-08 14:12:24', NULL, 1, '', '', '', '', '', '', 'page test 6', '', 'page-test-6', 1),
(52, 'page test 7', '', '', '', '2017-12-08 14:12:35', NULL, 1, '', '', '', '', '', '', 'page test 7', '', 'page-test-7', 1),
(53, 'page test 8', '', '', '', '2017-12-08 14:12:46', NULL, 1, '', '', '', '', '', '', 'page test 8', '', 'page-test-8', 1),
(54, 'Chính sách vận chuyển', '', '<h1 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><u><span style=\"font-family:Arial\"><img alt=\"Chính sách giao hàng SPRO\" height=\"284\" src=\"http://spro.vn/image/catalog/bt_products/free%20shipping8.jpg\" style=\"float:left\" width=\"300\" /></span></u></span></span></span></h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>1. PHẠM VI &Aacute;P DỤNG:</strong></span><br />\r\nTất cả c&aacute;c kh&aacute;ch h&agrave;ng mua sản phẩm tại Website;&nbsp;hoặc kh&aacute;ch h&agrave;ng đến trực tiếp xem v&agrave; mua h&agrave;ng tại c&ocirc;ng ty c&oacute; nhu cầu giao h&agrave;ng trực tiếp tại nh&agrave;.&nbsp;<br />\r\n<br />\r\n<span style=\"color:#ff3300\"><strong>2. H&Igrave;NH THỨC &Aacute;P DỤNG:</strong></span><br />\r\n<u>2.1. Giao h&agrave;ng miễn ph&iacute; :</u><br />\r\nGiao h&agrave;ng miễn ph&iacute;<strong>&nbsp;</strong><strong>&aacute;p dụng cho đơn h&agrave;ng gi&aacute; trị từ 1.000.000&nbsp;VNĐ</strong>&nbsp;trở l&ecirc;n, trong&nbsp;<strong>khu vực nội th&agrave;nh th&agrave;nh phố Hồ Ch&iacute; Minh.</strong><br />\r\nVới Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;<strong>mua c&aacute;c sản phẩm cồng kềnh (khối lượng tr&ecirc;n 50kg), hoặc đơn h&agrave;ng c&oacute; gi&aacute; trị tr&ecirc;n 5.000.000 VNĐ</strong>: Qu&yacute; Kh&aacute;ch an t&acirc;m v&igrave; cũng sẽ được SPRO.VN giao h&agrave;ng miễn ph&iacute;&nbsp;trong khu vực l&ecirc;n đến 40km t&iacute;nh từ trụ sở SPRO.VN đến địa chỉ của Qu&yacute; Kh&aacute;ch.<br />\r\n<br />\r\n<u>2.2 . Giao h&agrave;ng t&iacute;nh ph&iacute;:</u></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- Nếu Qu&yacute; Kh&aacute;ch h&agrave;ng ở qu&aacute; xa so với trụ sở SPRO.VN, nhưng c&oacute; đ<strong>ơn h&agrave;ng tr&ecirc;n 5.000.000VNĐ hoặc đơn h&agrave;ng cồng kềnh lớn hơn 50kg</strong>, Qu&yacute; Kh&aacute;ch an t&acirc;m với ch&iacute;nh s&aacute;ch vận chuyển ưu đ&atilde;i của ch&uacute;ng t&ocirc;i:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#0000ff\"><strong><span style=\"font-family:Arial\">Miễn ph&iacute; giao h&agrave;ng cho 40km đầu ti&ecirc;n.</span></strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Với mỗi km tiếp theo, Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;chỉ phải trả mức ph&iacute; rất mềm:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen\" height=\"34\" src=\"http://spro.vn/image/catalog/bt_products/them%2010k.png\" width=\"200\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- C&aacute;c trường hợp giao h&agrave;ng dưới 1.000.000VNĐ hoặc vận chuyển bằng dịch vụ vận chuyển&nbsp;b&ecirc;n thứ 3&nbsp;sẽ t&iacute;nh ph&iacute; giao h&agrave;ng theo bảng ph&iacute; vận chuyển của h&atilde;ng vận chuyển thứ 3 hoặc theo bảng ph&iacute; của c&ocirc;ng ty. Chi ph&iacute; n&agrave;y sẽ được c&ocirc;ng ty th&ocirc;ng b&aacute;o v&agrave; x&aacute;c nhận với Qu&yacute; kh&aacute;ch trước khi Qu&yacute; kh&aacute;ch tiến h&agrave;nh thanh to&aacute;n v&agrave; c&ocirc;ng ty tiến h&agrave;nh gửi h&agrave;ng.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>3. THỜI GIAN GIAO H&Agrave;NG:</strong></span><br />\r\n-&nbsp;<strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;) t&ugrave;y v&agrave;o khoảng c&aacute;ch vận chuyển.<br />\r\n- Trong một số trường hợp kh&aacute;ch quan C&ocirc;ng ty c&oacute; thể giao h&agrave;ng chậm trễ do những điều kiện bất khả kh&aacute;ng như thời tiết xấu, điều kiện giao th&ocirc;ng kh&ocirc;ng thuận lợi, xe hỏng h&oacute;c tr&ecirc;n đường giao h&agrave;ng, trục trặc trong qu&aacute; tr&igrave;nh xuất h&agrave;ng.<br />\r\n- Trong thời gian chờ đợi nhận h&agrave;ng, Qu&yacute; kh&aacute;ch c&oacute; bất cứ thắc mắc g&igrave; về th&ocirc;ng tin vận chuyển xin vui l&ograve;ng li&ecirc;n hệ hotline của ch&uacute;ng t&ocirc;i để nhận trợ gi&uacute;p.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chính sách vận chuyển\" height=\"296\" src=\"http://spro.vn/image/catalog/bt_products/624.jpg\" title=\"Vận chuyển hàng hóa, vận chuyển giá rẻ, vận chuyển toàn quốc, vận chuyển  nhanh\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;)</span></em></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>4. TR&Aacute;CH NHIỆM VỚI H&Agrave;NG H&Oacute;A VẬN CHUYỂN.</strong></span><br />\r\n- C&ocirc;ng ty sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng ch&uacute;ng t&ocirc;i đến Qu&yacute; kh&aacute;ch.<br />\r\n- Qu&yacute; kh&aacute;ch c&oacute; tr&aacute;ch nhiệm kiểm tra h&agrave;ng h&oacute;a khi nhận h&agrave;ng. Khi ph&aacute;t hiện h&agrave;ng h&oacute;a bị hư hại, trầy xước, bể vỡ, m&oacute;p m&eacute;o, hoặc sai h&agrave;ng h&oacute;a th&igrave; k&yacute; x&aacute;c nhận t&igrave;nh trạng h&agrave;ng h&oacute;a với Nh&acirc;n vi&ecirc;n giao nhận v&agrave; th&ocirc;ng b&aacute;o ngay cho Bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng theo số hotline của C&ocirc;ng ty.<br />\r\n- Sau khi Qu&yacute;&nbsp;kh&aacute;ch đ&atilde; k&yacute; nhận h&agrave;ng m&agrave; kh&ocirc;ng ghi ch&uacute; hoặc c&oacute; &yacute; kiến về h&agrave;ng h&oacute;a. C&ocirc;ng ty kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm với những y&ecirc;u cầu đổi trả v&igrave; hư hỏng, trầy xước, bể vỡ, m&oacute;p m&eacute;o, sai h&agrave;ng h&oacute;a,&hellip; từ Qu&yacute; kh&aacute;ch sau n&agrave;y.<br />\r\n- Nếu dịch vụ vận chuyển do Qu&yacute; kh&aacute;ch chỉ định v&agrave; lựa chọn th&igrave; qu&yacute; kh&aacute;ch sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a xảy ra trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng của c&ocirc;ng ty đến Qu&yacute; kh&aacute;ch. Kh&aacute;ch h&agrave;ng sẽ chịu tr&aacute;ch nhiệm cước ph&iacute; v&agrave; tổn thất li&ecirc;n quan.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen SPRO\" height=\"224\" src=\"http://spro.vn/image/catalog/bt_products/free_shipping_0.jpg\" title=\"Chính sách vận chuyển\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Hotline:&nbsp;<strong>0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;</strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>5. C&Aacute;C ĐIỀU KIỆN KH&Aacute;C</strong></span><br />\r\n- Ch&iacute;nh s&aacute;ch giao h&agrave;ng miễn ph&iacute; kh&ocirc;ng &aacute;p dụng đối với những sản phẩm được mua trong chương tr&igrave;nh khuyến mại giờ v&agrave;ng, gi&aacute; sốc&hellip;..<br />\r\n- Chi ph&iacute; cầu đường, ph&iacute; v&agrave;o th&ocirc;n x&atilde; hoặc ph&iacute; đỗ xe tại chung cư do kh&aacute;ch h&agrave;ng tự thanh to&aacute;n.<br />\r\n- C&ocirc;ng ty chỉ giao h&agrave;ng cho đ&uacute;ng người nhận m&agrave; Qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute; khi mua h&agrave;ng. Trong qu&aacute; tr&igrave;nh giao h&agrave;ng nếu c&oacute; sự thay đổi người nhận một c&aacute;ch kh&ocirc;ng r&otilde; r&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối giao h&agrave;ng v&agrave; y&ecirc;u cầu Qu&yacute; kh&aacute;ch h&agrave;ng nhận h&agrave;ng tại địa điểm của b&aacute;n h&agrave;ng của c&ocirc;ng ty.<br />\r\n- Nếu địa chỉ giao h&agrave;ng kh&ocirc;ng r&otilde; r&agrave;ng, nằm trong ng&otilde; ng&aacute;ch, hoặc ở những nơi nguy hiểm, những v&ugrave;ng đồi n&uacute;i hiểm trở, phương tiện giao th&ocirc;ng đi lại kh&oacute; khăn, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối vận chuyển, giao nhận h&agrave;ng trực tiếp.<br />\r\n- Trong c&aacute;c trường hợp bất khả kh&aacute;ng, do thi&ecirc;n tai, lũ lụt, hỏng h&oacute;c cầu ph&agrave; &hellip;, ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu tr&aacute;ch nhiệm bồi thường thiệt hại ph&aacute;t sinh do giao h&agrave;ng kh&ocirc;ng đ&uacute;ng thời gian hoặc kh&ocirc;ng vận chuyển h&agrave;ng h&oacute;a đến địa điểm như đ&atilde; thỏa thuận với kh&aacute;ch h&agrave;ng.<br />\r\n- Trường hợp ch&uacute;ng t&ocirc;i đ&atilde; vận chuyển h&agrave;ng đến địa điểm giao nhận như thỏa thuận l&uacute;c mua h&agrave;ng, nhưng v&igrave; một l&yacute; do n&agrave;o đ&oacute; kh&aacute;ch h&agrave;ng y&ecirc;u cầu trả lại h&agrave;ng th&igrave; l&uacute;c đ&oacute; kh&aacute;ch h&agrave;ng phải chịu chi ph&iacute; vận chuyển theo quy định của c&ocirc;ng ty.<br />\r\n- Đối với những sản phẩm nặng v&agrave; cồng kềnh cần vận chuyển l&ecirc;n tầng m&agrave; kh&ocirc;ng c&oacute; thang m&aacute;y đề nghị kh&aacute;ch h&agrave;ng hỗ trợ trong việc giao nhận.<br />\r\n- Trong những ng&agrave;y đặc biệt hoặc c&aacute;c ng&agrave;y Lễ hội do ch&iacute;nh s&aacute;ch giao th&ocirc;ng chung bị hạn chế (cấm đường đối với một số phương tiện&hellip;) thời gian giao h&agrave;ng c&oacute; thể sẽ thay đổi, Ch&uacute;ng t&ocirc;i sẽ gọi điện cho kh&aacute;ch h&agrave;ng để thống nhất thời gian giao nhận.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Phuong thuc van chuyen SPRO\" height=\"247\" src=\"http://spro.vn/image/catalog/bt_products/phuong-thuc-thanh-toan.jpg\" width=\"300\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>SPRO.VN</strong>&nbsp;- Giao h&agrave;ng tận nơi, đ&uacute;ng h&agrave;ng đ&uacute;ng người</span></em></span></span></span></p>\r\n', NULL, '2017-12-08 14:12:56', '2018-04-02 00:04:08', 1, '', '', '', '', '', '', 'Chính sách vận chuyển', '', 'chinh-sach-van-chuyen', 1),
(55, 'Hướng dẫn mua hàng', '', '', NULL, '2017-12-08 14:12:06', '2018-05-14 11:05:29', 1, '', '', '', '', '', '', 'Hướng dẫn mua hàng', '', 'huong-dan-mua-hang', 1),
(56, 'Phương thức thanh toán', '', '<h3>Phương thức thanh to&aacute;n</h3>\r\n\r\n<p>C&Aacute;C TH&Ocirc;NG TIN CẦN BIẾT KHI THANH TO&Aacute;N</p>\r\n\r\n<h2 style=\"text-align:center\"><u><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO\" height=\"186\" src=\"http://spro.vn/image/catalog/bt_products/payment-options-banner.png\" title=\"phương thức thanh toan, phuong thuc thanh toan, thanh toán tiền hàng, thanh toan tien hang\" width=\"500\" /></a></u><br />\r\n&nbsp;</h2>\r\n\r\n<p>1. Thanh to&aacute;n COD: Nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt<br />\r\n<em>Khi qu&yacute; kh&aacute;ch y&ecirc;u cầu h&igrave;nh thức thanh to&aacute;n COD tức nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt,&nbsp;Qu&yacute; kh&aacute;ch vui l&ograve;ng lưu &yacute; những quy định sau:</em><br />\r\n- Đối với c&aacute;c sản phẩm được giao h&agrave;ng bởi nh&acirc;n vi&ecirc;n c&ocirc;ng ty, Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n đầy đủ sau khi nh&acirc;n vi&ecirc;n đ&atilde; giao h&agrave;ng cho Qu&yacute; kh&aacute;ch. Nếu cần hỗ trợ hướng dẫn sử dụng, hoặc kiểm tra m&aacute;y m&oacute;c, thiết bị ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ ngay tại chỗ.<br />\r\n- Đối với h&agrave;ng h&oacute;a được gởi theo đường bưu điện hoặc dịch vụ chuyển ph&aacute;t nhanh. Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n trước cho nh&acirc;n vi&ecirc;n giao h&agrave;ng rồi mới b&oacute;c mở h&agrave;ng h&oacute;a (Đ&acirc;y l&agrave; quy định bắt buộc của đơn vị vận chuyển). Sau khi b&oacute;c mở h&agrave;ng h&oacute;a, nếu&nbsp;Qu&yacute; kh&aacute;ch cần th&ecirc;m hỗ trợ g&igrave;, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với c&ocirc;ng ty ch&uacute;ng t&ocirc;i.<br />\r\n<br />\r\n2. Thanh to&aacute;n qua nh&agrave; xe, đơn vị chuyển ph&aacute;t<br />\r\n<em>Đối với c&aacute;c tỉnh ở xa khu vực th&agrave;nh phố Hồ Ch&iacute; Minh hay H&agrave; Nội. Ch&uacute;ng t&ocirc;i thường lựa chọn phương&nbsp;thức vận chuyển bằng xe kh&aacute;ch hoặc ch&agrave;nh xe vận chuyển. Điều n&agrave;y l&agrave;m giảm chi ph&iacute; vận chuyển đ&aacute;ng kể cho kh&aacute;ch h&agrave;ng. V&igrave; những sản phẩm c&oacute; k&iacute;ch thước hoặc trọng lượng lớn gần như kh&ocirc;ng thể gởi bưu điện hoặc c&oacute; gởi cước ph&iacute; sẽ rất cao. Do đ&oacute; Qu&yacute; kh&aacute;ch lưu &yacute; một số vấn đề sau đ&acirc;y:</em><br />\r\n- C&ocirc;ng ty sẽ &aacute;p dụng ch&iacute;nh s&aacute;ch nh&agrave; xe thu tiền hộ c&ocirc;ng ty. Do đ&oacute; nếu được y&ecirc;u cầu thu hộ, Qu&yacute; kh&aacute;ch vui l&ograve;ng chuẩn bị tiền thanh to&aacute;n trực tiếp cho nh&agrave; xe hoặc đơn vị vận chuyển do&nbsp;c&ocirc;ng ty y&ecirc;u cầu.<br />\r\n- Đối với c&aacute;c sản phẩm c&oacute; trọng lượng lớn v&agrave; kỹ thuật sử dụng phức tạp, Qu&yacute; kh&aacute;ch c&oacute; thể y&ecirc;u cầu nh&acirc;n vi&ecirc;n c&ocirc;ng ty đến tận nh&agrave; lắp đặt. V&agrave; sẽ thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng hoặc nh&acirc;n vi&ecirc;n lắp đặt t&ugrave;y theo th&ocirc;ng b&aacute;o của c&ocirc;ng ty.<br />\r\n<br />\r\n3.&nbsp;Thanh to&aacute;n tại c&ocirc;ng ty<br />\r\nQu&yacute; kh&aacute;ch mua h&agrave;ng c&oacute; thể đến địa chỉ c&ocirc;ng ty để xem h&agrave;ng v&agrave; mua h&agrave;ng:</p>\r\n\r\n<p><em>167 - 169 B&igrave;nh Lợi (Nơ Trang Long nối d&agrave;i), P. 13, Quận B&igrave;nh Thạnh, Tp. Hồ Ch&iacute; Minh .</em></p>\r\n\r\n<p><br />\r\n4. Thanh to&aacute;n c&ocirc;ng nợ<br />\r\nĐối với c&aacute;c c&ocirc;ng ty đề nghị thanh to&aacute;n c&ocirc;ng nợ, hai b&ecirc;n cần x&aacute;c nhận đơn đặt h&agrave;ng v&agrave; thời gian c&ocirc;ng nợ hoặc gởi PO đặt h&agrave;ng qua Email:&nbsp;Hotrospro@gmail.com. C&ocirc;ng ty sẽ xem x&eacute;t c&aacute;c trường hợp cụ thể v&agrave; th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng về việc c&oacute; chấp nhận&nbsp;c&ocirc;ng nợ hay kh&ocirc;ng.<br />\r\nLi&ecirc;n hệ trực tiếp qua số điện thoại:&nbsp;0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;<br />\r\n<br />\r\n5. Thanh to&aacute;n Chuyển khoản</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO \" height=\"313\" src=\"http://spro.vn/image/catalog/bt_products/computer-keyboard-and-credit-card.jpg\" title=\"phương thức thanh toán\" width=\"500\" /></a><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Qu&yacute; Kh&aacute;ch vui l&ograve;ng chuyển tiền&nbsp;v&agrave;o một&nbsp;trong c&aacute;c&nbsp;t&agrave;i khoản sau:</strong></p>\r\n\r\n<ul>\r\n	<li>Chủ t&agrave;i khoản: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 060059386363<br />\r\n	-&nbsp;<strong>Tại NH Sacombank</strong>&nbsp;- PGD Phan Đăng Lưu - Chi nh&aacute;nh 8/3<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: CT TNHH C&ocirc;ng Nghiệp v&agrave; TM Nam Việt<br />\r\n	- Số TK: 0531002529891<br />\r\n	-&nbsp;<strong>Tại NH Vietcombank&nbsp;</strong>- Chi nh&aacute;nh Đ&ocirc;ng S&agrave;i G&ograve;n<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 19026579068019<br />\r\n	-&nbsp;<strong>Tại NH Techcombank</strong>&nbsp;- Chi nh&aacute;nh Nguyễn Th&aacute;i Sơn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 100414851047518<br />\r\n	-&nbsp;<strong>Tại NH Eximbank</strong>&nbsp;- Chi nh&aacute;nh Chợ Lớn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 172704070003087<br />\r\n	-&nbsp;<strong>Tại NH HD Bank</strong>&nbsp;- Chi nh&aacute;nh Gia Định<br />\r\n	&nbsp;</li>\r\n	<li>TK c&aacute; nh&acirc;n kế to&aacute;n trưởng. Chủ TK: Phạm Thị&nbsp;Tuyết<br />\r\n	- Số TK: 108004183511<br />\r\n	-&nbsp;<strong>Tại NH Vietinbank</strong>&nbsp;- Chi nh&aacute;nh Vũng T&agrave;u.</li>\r\n</ul>\r\n\r\n<p>Hiện nay, c&ocirc;ng ty ch&uacute;ng t&ocirc;i kh&ocirc;ng &aacute;p dụng h&igrave;nh thức mua h&agrave;ng trả g&oacute;p. Khi mua h&agrave;ng nếu Qu&yacute; kh&aacute;ch c&oacute; thắc mắc về vấn đề thanh to&aacute;n, xin vui l&ograve;ng xem qua c&aacute;c th&ocirc;ng tin ph&iacute;a dưới.</p>\r\n\r\n<p>Sau khi đ&atilde; chuyển tiền, Qu&yacute; kh&aacute;ch vui l&ograve;ng th&ocirc;ng b&aacute;o ngay để c&ocirc;ng ty ch&uacute;ng t&ocirc;i tiện theo d&otilde;i,&nbsp;ghi nhận v&agrave; chuyển h&agrave;ng ngay cho Qu&yacute; kh&aacute;ch.&nbsp;</p>\r\n\r\n<p>--------------------------------------------------------------------</p>\r\n\r\n<p style=\"text-align:center\">Rất cảm ơn sự ủng hộ của Qu&yacute; kh&aacute;ch!</p>\r\n', NULL, '2017-12-08 14:12:15', '2018-04-02 00:04:15', 1, '', '', '', '', '', '', 'Phương thức thanh toán', '', 'phuong-thuc-thanh-toan', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci,
  `lang_page_des` text COLLATE utf8_unicode_ci,
  `lang_page_content` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(35, 35, 'vn', 'Aroma Car - Mùi hương tuyệt vời khó quên', 'Trên những chặng đường lái xe, bạn cần có được một tinh thần sảng khoái và minh mẫn nhất. Dòng nước hoa ô tô cao cấp Aroma Car với mùi hương tươi mát đến từ Pháp sẽ là người bạn đồng hành tuyệt vời trong chuyến đi của bạn. ', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Kh&ocirc;ng gian trong &ocirc; t&ocirc; thường xuy&ecirc;n gặp t&igrave;nh trạng bụi bẩn v&agrave; ẩm mốc tấn c&ocirc;ng, dẫn đến nhiều m&ugrave;i kh&oacute; chịu, g&acirc;y ảnh hưởng đến hiệu suất l&aacute;i xe v&agrave; sức khỏe của những người b&ecirc;n trong xe. Ch&iacute;nh v&igrave; thế c&aacute;c d&ograve;ng sản phẩm nước hoa d&agrave;nh cho &ocirc; t&ocirc; ra đời với c&ocirc;ng dụng l&agrave;m sạch bầu kh&ocirc;ng kh&iacute; , mang lại hương thơm tươi m&aacute;t Nước hoa Aroma Car được biết đến l&agrave; sản phẩm m&ugrave;i hương cao cấp đến từ Ph&aacute;p, d&agrave;nh ri&ecirc;ng cho chiếc xe &ocirc; t&ocirc; của kh&aacute;ch h&agrave;ng. Trong suốt nhiều năm qua, Aroma Car lu&ocirc;n vinh dự trở th&agrave;nh thương hiệu nước hoa &ocirc; t&ocirc; được ưa chuộng nhất tr&ecirc;n to&agrave;n thế giới. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-size:22px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Khởi đầu v&agrave; sự ph&aacute;t triển Aroma Car:</span></span></span></strong></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Aroma Car l&agrave; một trong những thương hiệu nước hoa cao cấp d&agrave;nh ri&ecirc;ng cho &ocirc; t&ocirc; c&oacute; xuất xứ từ Ph&aacute;p. Được biết đến l&agrave; xứ xở của c&aacute;c m&ugrave;i hương, Ph&aacute;p lu&ocirc;n cho ra đời những d&ograve;ng nước hoa tuyệt vời nhất, được nhiều kh&aacute;ch h&agrave;ng tr&ecirc;n thế giới đ&oacute;n nhận. Sản phẩm Aroma Car cũng kh&ocirc;ng l&agrave; ngoại lệ với những m&ugrave;i hương thơm độc đ&aacute;o c&ugrave;ng sự an to&agrave;n cho sức khỏe người sử dụng. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Nước hoa &ocirc; t&ocirc; Aroma Car được chiết xuất từ 100% nguy&ecirc;n liệu thi&ecirc;n nhi&ecirc;n, tạo n&ecirc;n hương thơm dịu m&aacute;t v&agrave; ho&agrave;n to&agrave;n kh&ocirc;ng g&acirc;y ảnh hưởng đến sức khỏe của những người b&ecirc;n trong xe &ocirc; t&ocirc;.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"aromar-car\" height=\"276\" src=\"https://i.imgur.com/FUEw4IC.png\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Aroma Car l&agrave; một trong những thương hiệu nước hoa &ocirc; t&ocirc; lớn đến từ Ph&aacute;p</span></span></span></em></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Th&ecirc;m v&agrave;o đ&oacute;, hương thơm của Aroma Car cũng c&oacute; nhiều t&aacute;c động đến tinh thần của con người, gi&uacute;p người l&aacute;i xe c&oacute; được cảm gi&aacute;c sảng kho&aacute;i, tập trung hơn khi ngồi tr&ecirc;n tay l&aacute;i, giảm thiểu tối đa những sự cố c&oacute; thể xảy ra trong qu&aacute; tr&igrave;nh sử dụng &ocirc; t&ocirc;. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Trải qua nhiều năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển, d&ograve;ng nước hoa &ocirc; t&ocirc; Aromar Car đ&atilde; chinh phục được rất nhiều kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh tr&ecirc;n thị trường thế giới. Đồng thời biến thương hiệu n&agrave;y trở th&agrave;nh một trong những thương hiệu nước hoa &ocirc; t&ocirc; h&agrave;ng đầu thế giới. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:22px\"><strong><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Những loại nước hoa Aroma Car để người d&ugrave;ng lựa chọn:</span></span></strong></strong></span></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">1.Nước hoa Aroma Car dạng Gel:</span></span></span></strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Dạng Gel l&agrave; một trong những dạng nước hoa &ocirc; t&ocirc; phổ biến được nhiều kh&aacute;ch h&agrave;ng ưa chuộng sử dụng. Với ưu điểm l&agrave; khả năng lưu giữ hương l&acirc;u, loại bỏ được hầu hết những m&ugrave;i kh&oacute; chịu b&ecirc;n trong chiếc xe của bạn. Thời gian sử dụng l&acirc;u. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"aroma-car\" height=\"600\" src=\"https://i.imgur.com/21qvD90.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Sản phẩm nước hoa &ocirc; t&ocirc; Aroma Car dạng Gel</span></span></span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">2.Nước hoa &ocirc; t&ocirc; Aroma Car dạng tinh dầu:</span></span></span></strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Sản phẩm Aroma Car dạng tinh dầu treo với nhiều ưu điểm trong hương thơm đặc trưng c&ugrave;ng kiểu thiết kế mới lạ, c&oacute; thể d&ugrave;ng để trang tr&iacute; v&agrave; gi&uacute;p chiếc xe hơi của bạn tr&ocirc;ng bắt mắt hơn. Sản phẩm c&oacute; nhiều k&iacute;ch cỡ v&agrave; m&agrave;u sắc kh&aacute;c nhau để bạn lựa chọn. </span></span></span></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"aroma-car\" height=\"600\" src=\"https://i.imgur.com/jzsGMaf.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Sản phẩm nước hoa Aroma Car dạng tinh dầu</span></span></span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">3.Nước hoa &ocirc; t&ocirc; dạng s&aacute;p Aroma Car Organic:</span></span></span></strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Sản phẩm nước hoa &ocirc; t&ocirc; dạng s&aacute;p Organic c&oacute; h&igrave;nh d&aacute;ng rất nhỏ gọn c&ugrave;ng m&ugrave;i hương đa dạng để kh&aacute;ch h&agrave;ng c&oacute; thể lựa chọn cho chiếc xe của m&igrave;nh. Với nguy&ecirc;n liệu 100% từ thi&ecirc;n nhi&ecirc;n, gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; được khoảng thời gian thoải m&aacute;i nhất tr&ecirc;n &ocirc; t&ocirc;. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"aroma-car\" height=\"600\" src=\"https://i.imgur.com/F9uMqex.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><em><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Sản phẩm nước hoa Aroma Car dạng s&aacute;p tiện dụng</span></span></span></em></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">4.Nước hoa &ocirc; t&ocirc; c&agrave;i cửa gi&oacute; Aroma Car Speed:</span></span></span></strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Đối với những bạn ưa chuộng phong c&aacute;ch thể thao, năng động th&igrave; sản phẩm nước hoa &ocirc; t&ocirc; Aroma Speed sẽ l&agrave; sự lựa chọn ho&agrave;n hảo. T&ocirc;ng m&agrave;u chủ đạo của sản phẩm l&agrave; đen v&agrave; xanh, gi&uacute;p kh&ocirc;ng gian &ocirc; t&ocirc; của bạn trở n&ecirc;n hiện đại, sang trọng hơn v&agrave; đem đến m&ugrave;i hương tuyệt vời.</span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"600\" src=\"https://i.imgur.com/zswclQ3.jpg\" width=\"600\" /></p>\r\n\r\n<h3 dir=\"ltr\" style=\"text-align:justify\"><strong><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">5.Nước hoa &ocirc; t&ocirc; Aroma Car dạng chai xịt:</span></span></span></strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"600\" src=\"https://i.imgur.com/2iTjwmw.jpg\" width=\"600\" /></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">PRESTIGE SPAY - Nước hoa &ocirc; t&ocirc; dạng xịt - m&ugrave;i hương tinh tế như ch&iacute;nh thiết kế sang trọng, hiện đại.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">- Với PRESTIGE SPAY, bạn sẽ kh&ocirc;ng mất thời gian chờ đợi bởi m&ugrave;i hương sẽ nhanh ch&oacute;ng lan tỏa đến cả kh&ocirc;ng gian nhỏ nhất trong xe của bạn. Sự kết hợp tuyệt vời giữa h&igrave;nh d&aacute;ng hiện đại v&agrave; m&ugrave;i hương m&atilde;nh liệt lu&ocirc;n chiếm được cảm t&igrave;nh cả những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</span></span></span><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">&nbsp;</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:18px\"><span style=\"color:#000000\">Những m&ugrave;i hương ho&agrave;n hảo, dịu nhẹ nhưng khiến cho người d&ugrave;ng nhớ m&atilde;i, Aroma Car đ&atilde; l&agrave; người bạn đồng h&agrave;nh của h&agrave;ng triệu chiếc &ocirc; t&ocirc; tr&ecirc;n to&agrave;n thế giới.</span></span></span></p>\r\n', '', '', '', '', '', 1, 'gioi-thieu-vn', 'Giới thiệu', 'Aroma Car', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..'),
(36, 35, 'en', 'Giới thiệu en', 'Giới thiệu công ty. Được thành lập vào năm 1993, Công ty Cổ Phần Kỹ Thuật Toàn Thắng được biết đến như một nhà cung cấp chuyên nghiệp các giải pháp ...', '<p>Được th&agrave;nh lập v&agrave;o năm 1993, C&ocirc;ng ty Cổ Phần Kỹ Thuật To&agrave;n Thắng được biết đến như một&nbsp; nh&agrave; cung cấp chuy&ecirc;n nghiệp c&aacute;c giải ph&aacute;p thiết bị v&agrave; dịch vụ kỹ thuật chất lượng cao, c&ocirc;ng nghệ ti&ecirc;n tiến&nbsp;cho kh&aacute;ch h&agrave;ng ng&agrave;nh dầu kh&iacute;, điện lực v&agrave; một số ng&agrave;nh c&ocirc;ng nghiệp nặng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; văn ph&ograve;ng ch&iacute;nh tại TP. Hồ Ch&iacute; Minh v&agrave; một c&ocirc;ng ty con tại TP. Vũng T&agrave;u. Với đội ngũ chuy&ecirc;n gia, kỹ sư được đ&agrave;o tạo chuy&ecirc;n s&acirc;u, chuy&ecirc;n tr&aacute;ch từng mảng sản phẩm, ch&uacute;ng t&ocirc;i lu&ocirc;n đem đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p kỹ thuật, thương mại đa dạng, đ&aacute;p ứng tốt nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" height=\"564\" src=\"/image/images/670px-conceptualmapfloss(1).png\" style=\"float:right\" width=\"670\" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng đảm nhận cung cấp c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng như: Bảo tr&igrave;, đại tu, sửa chữa, đ&agrave;o tạo, hướng dẫn sử dụng, dịch vụ quản l&yacute; t&agrave;i sản &amp; hợp đồng v&agrave; c&aacute;c dịch vụ kh&aacute;c tại c&ocirc;ng trường cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 1, 'gioi-thieu-en', 'Giới thiệu', '', 'Mô tả cho bài viết giới thiệu'),
(37, 36, 'vn', 'Chuyển giao công nghệ', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 1, 'chuyen-giao-cong-nghe', 'Báo giá', 'báo giá dịch vụ', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"'),
(38, 36, 'en', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 1, 'chuyen-giao-cong-nghe-en', 'Báo giá', '', 'thẻ mô tả của bài viết báo giá'),
(39, 37, 'vn', 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(40, 37, 'en', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(43, 39, 'vn', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h1>Ti&ecirc;u đề tin tức</h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\">M&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/slide1.jpg\" /></p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/formImgCate.jpg\" /></p>\r\n', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(44, 39, 'en', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h2>THẺ H2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(45, 40, 'vn', 'Chính sách bảo mật', '', '<h2>DP GREEN-PHAR cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của tất cả kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>Cảm ơn bạn đ&atilde; truy cập website: www.greenphar.com<br />\r\nCh&uacute;ng t&ocirc;i hiểu r&otilde; tầm quan trọng của sự ri&ecirc;ng tư v&agrave; sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản để biết những thay đổi.</p>\r\n\r\n<h2>Điều 1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin</h2>\r\n\r\n<h3>1.1. Mục đ&iacute;ch thu thập th&ocirc;ng tin:</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i thực hiện việc thu thập th&ocirc;ng tin của bạn th&ocirc;ng qua website n&agrave;y nhằm:<br />\r\nDP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nGiải đ&aacute;p thắc mắc của bạn về vấn đề c&aacute;c bệnh m&agrave; bạn thắc mắc v&agrave; quan t&acirc;m.<br />\r\nGiới thiệu c&aacute;c h&agrave;ng h&oacute;a v&agrave; dịch vụ c&oacute; thể ph&ugrave; hợp với c&aacute;c nhu cầu v&agrave; sở th&iacute;ch của bạn.<br />\r\nCung cấp những th&ocirc;ng tin mới nhất của website.<br />\r\nXem x&eacute;t v&agrave; n&acirc;ng cấp nội dung, giao diện của website.<br />\r\nThực hiện hoạt động khảo s&aacute;t kh&aacute;ch h&agrave;ng.<br />\r\nThực hiện c&aacute;c hoạt động quảng b&aacute; sản phẩm v&agrave; giới thiệu những chương tr&igrave;nh khuyến m&atilde;i.<br />\r\nGiải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website.<br />\r\nCh&uacute;ng t&ocirc;i bảo lưu quyền từ chối tr&aacute;ch nhiệm về bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh nếu th&ocirc;ng tin c&aacute; nh&acirc;n của bạn bị đ&aacute;nh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.</p>\r\n\r\n<h3>1.2. Phạm vi thu thập th&ocirc;ng tin c&aacute; nh&acirc;n:</h3>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i thu thập của bạn khi bạn gửi thắc mắc về cho ch&uacute;ng t&ocirc;i, bao gồm:<br />\r\nHọ, t&ecirc;n, Năm sinh.<br />\r\nĐịa chỉ li&ecirc;n hệ.<br />\r\nĐiện thoại li&ecirc;n hệ.<br />\r\nEmail.<br />\r\nTh&ocirc;ng tin bệnh l&yacute; v&agrave; những thắc mắc về bệnh học li&ecirc;n quan.</p>\r\n\r\n<h2>Điều 2. Phạm vi sử dụng th&ocirc;ng tin</h2>\r\n\r\n<p>Th&ocirc;ng tin của bạn được sử dụng để ch&uacute;ng t&ocirc;i hoặc c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan kh&aacute;c c&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu của bạn.<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n hệ với bạn hoặc giới thiệu bạn đến c&aacute;c cuộc nghi&ecirc;n cứu bao gồm nghi&ecirc;n cứu sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng, thị trường, nội dung c&aacute; nh&acirc;n kh&aacute;c, hoặc c&oacute; li&ecirc;n quan đến một số giao dịch nhất định.<br />\r\nCh&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin về truy cập website của bạn gồm những th&ocirc;ng tin c&oacute; thể nhận biết v&agrave; kh&ocirc;ng thể nhận biết để ph&acirc;n t&iacute;ch (v&iacute; dụ: dữ liệu ph&acirc;n t&iacute;ch việc truy cập website, &hellip;).<br />\r\nTh&ocirc;ng tin của bạn được sử dụng để gi&uacute;p cung cấp cho c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể cung cấp th&ocirc;ng tin cho c&aacute;c c&ocirc;ng ty đại diện ch&uacute;ng t&ocirc;i. Những c&ocirc;ng ty n&agrave;y cũng chịu sự r&agrave;ng buộc nghi&ecirc;m ngặt bởi Ch&iacute;nh s&aacute;ch Bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>Điều 3. Thời gian lưu trữ th&ocirc;ng tin</h2>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n c&aacute;c hệ thống quản l&yacute;, lưu trữ dữ liệu của ch&uacute;ng t&ocirc;i hoặc ch&uacute;ng t&ocirc;i thu&ecirc; trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch thu thập hoặc khi bạn c&oacute; y&ecirc;u cầu hủy c&aacute;c th&ocirc;ng tin đ&atilde; cung cấp.</p>\r\n\r\n<h2>Điều 4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐịa chỉ: Số 19, Ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội.<br />\r\nĐiện thoại: (024) 6262.7731<br />\r\nEmail: dpgreenphar@gmail.com</p>\r\n\r\n<h2>Điều 5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh.</h2>\r\n\r\n<p>Bạn c&oacute; thể tự đăng nhập v&agrave;o website qua link www.greenphar.com &nbsp;v&agrave; chỉnh sửa c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n như: t&ecirc;n, số điện thoại, địa chỉ giao-nhận h&agrave;ng, ...<br />\r\nNếu bạn kh&ocirc;ng quan t&acirc;m hoặc kh&ocirc;ng muốn nhận tin tức, th&ocirc;ng tin, bạn c&oacute; thể thay đổi th&ocirc;ng tin của bạn v&agrave;o bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch gửi email về cho ch&uacute;ng t&ocirc;i qua địa chỉ email: cskh@greenphar.com</p>\r\n\r\n<h2>Điều 6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Ngo&agrave;i việc sử dụng c&aacute;c th&ocirc;ng tin của bạn v&agrave;o c&aacute;c mục đ&iacute;ch n&ecirc;u tại Khoản 1.1 Điều 1 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y v&agrave; phạm vi n&ecirc;u tại Điều 2 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y, Ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.&nbsp;Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản n&agrave;y để biết những thay đổi.<br />\r\n<strong>Ch&iacute;nh s&aacute;ch bảo mật tại DP GREEN- PHAR</strong><br />\r\n- DP GREEN-PHAR c&oacute; thể thay đổi ch&iacute;nh s&aacute;ch bảo mật v&agrave; mọi thay đổi sẽ được c&ocirc;ng khai tr&ecirc;n website www.greenphar.com<br />\r\n- Tất cả c&aacute;c thay đổi về ch&iacute;nh s&aacute;ch bảo mật ch&uacute;ng t&ocirc;i đều tu&acirc;n thủ theo quy định của Ph&aacute;p Luật Nh&agrave; Nước hiện h&agrave;nh.<br />\r\n- Mọi &yacute; kiến thắc mắc, khiếu nại v&agrave; tranh chấp vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262. 7731</strong><br />\r\n<br />\r\nTr&acirc;n trọng,<br />\r\n<strong>DP GREEN- PHAR: Chu Đ&aacute;o, Tin Cậy!</strong></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(46, 40, 'en', 'Chính sách bảo mật', '', 'DP GREEN-PHAR CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN CỦA TẤT CẢ KHÁCH HÀNG. Cảm ơn bạn đã truy cập website: www.greenphar.com\r\nChúng tôi hiểu rõ tầm quan trọng của sự riêng tư và sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản để biết những thay đổi. ĐIỀU 1. MỤC ĐÍCH VÀ PHẠM VI THU THẬP THÔNG TIN1.1. Mục đích thu thập thông tin:Chúng tôi thực hiện việc thu thập thông tin của bạn thông qua website này nhằm:\r\nDP GREEN-PHAR trung tâm tư vấn & tìm giải pháp xử lý các bệnh ngoài cộng đồng.\r\nGiải đáp thắc mắc của bạn về vấn đề các bệnh mà bạn thắc mắc và quan tâm.\r\nGiới thiệu các hàng hóa và dịch vụ có thể phù hợp với các nhu cầu và sở thích của bạn.\r\nCung cấp những thông tin mới nhất của website.\r\nXem xét và nâng cấp nội dung, giao diện của website.\r\nThực hiện hoạt động khảo sát khách hàng.\r\nThực hiện các hoạt động quảng bá sản phẩm và giới thiệu những chương trình khuyến mãi.\r\nGiải quyết các vấn đề, tranh chấp phát sinh liên quan đến việc sử dụng website.\r\nChúng tôi bảo lưu quyền từ chối trách nhiệm về bất kỳ thiệt hại nào phát sinh nếu thông tin cá nhân của bạn bị đánh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ cách nào khác. 1.2. Phạm vi thu thập thông tin cá nhân:Thông tin cá nhân mà chúng tôi thu thập của bạn khi bạn gửi thắc mắc về cho chúng tôi, bao gồm:\r\nHọ, tên, Năm sinh.\r\nĐịa chỉ liên hệ.\r\nĐiện thoại liên hệ.\r\nEmail.\r\nThông tin bệnh lý và những thắc mắc về bệnh học liên quan. ĐIỀU 2. PHẠM VI SỬ DỤNG THÔNG TINThông tin của bạn được sử dụng để chúng tôi hoặc các bên có liên quan khác có thể thực hiện các yêu cầu của bạn.\r\nChúng tôi có thể liên hệ với bạn hoặc giới thiệu bạn đến các cuộc nghiên cứu bao gồm nghiên cứu sự hài lòng của khách hàng, thị trường, nội dung cá nhân khác, hoặc có liên quan đến một số giao dịch nhất định.\r\nChúng tôi thu thập thông tin về truy cập website của bạn gồm những thông tin có thể nhận biết và không thể nhận biết để phân tích (ví dụ: dữ liệu phân tích việc truy cập website, …).\r\nThông tin của bạn được sử dụng để giúp cung cấp cho các dịch vụ của chúng tôi và chúng tôi có thể cung cấp thông tin cho các công ty đại diện chúng tôi. Những công ty này cũng chịu sự ràng buộc nghiêm ngặt bởi Chính sách Bảo mật của chúng tôi. ĐIỀU 3. THỜI GIAN LƯU TRỮ THÔNG TINChúng tôi sẽ lưu trữ các thông tin cá nhân do khách hàng cung cấp trên các hệ thống quản lý, lưu trữ dữ liệu của chúng tôi hoặc chúng tôi thuê trong quá trình cung cấp dịch vụ cho khách hàng cho đến khi hoàn thành mục đích thu thập hoặc khi bạn có yêu cầu hủy các thông tin đã cung cấp.ĐIỀU 4. ĐỊA CHỈ CỦA ĐƠN VỊ THU THẬP VÀ QUẢN LÝ THÔNG TIN CÁ NHÂNCÔNG TY CỔ PHẦN DP GREEN-PHAR\r\nĐịa chỉ: Số 19, Ngõ 4, phố Văn La, Hà Đông, Hà Nội.\r\nĐiện thoại: (024) 6262.7731\r\nEmail: dpgreenphar@gmail.com ĐIỀU 5. PHƯƠNG TIỆN VÀ CÔNG CỤ ĐỂ NGƯỜI DÙNG TIẾP CẬN VÀ CHỈNH SỬA DỮ LIỆU CÁ NHÂN CỦA MÌNH.Bạn có thể tự đăng nhập vào website qua link www.greenphar.com  và chỉnh sửa các thông tin cá nhân như: tên, số điện thoại, địa chỉ giao-nhận hàng, ...\r\nNếu bạn không quan tâm hoặc không muốn nhận tin tức, thông tin, bạn có thể thay đổi thông tin của bạn vào bất kỳ lúc nào bằng cách gửi email về cho chúng tôi qua địa chỉ email: cskh@greenphar.comĐIỀU 6. CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN KHÁCH HÀNGNgoài việc sử dụng các thông tin của bạn vào các mục đích nêu tại Khoản 1.1 Điều 1 của Chính sách bảo mật này và phạm vi nêu tại Điều 2 của Chính sách bảo mật này, Chúng tôi sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản này để biết những thay đổi.\r\nChính sách bảo mật tại DP GREEN- PHAR\r\n- DP GREEN-PHAR có thể thay đổi chính sách bảo mật và mọi thay đổi sẽ được công khai trên website www.greenphar.com\r\n- Tất cả các thay đổi về chính sách bảo mật chúng tôi đều tuân thủ theo quy định của Pháp Luật Nhà Nước hiện hành.\r\n- Mọi ý kiến thắc mắc, khiếu nại và tranh chấp vui lòng liên hệ với chúng tôi qua hotline Chăm sóc khách hàng: (024) 6262. 7731\r\n\r\nTrân trọng,\r\nDP GREEN- PHAR: Chu Đáo, Tin Cậy!', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', '');
INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(47, 41, 'vn', 'Chính sách đổi - trả', '', '<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng chắc chắn rằng sản phẩm y&ecirc;u cầu đổi (trả) thỏa m&atilde;n điều kiện đổi trả h&agrave;ng của DP GREEN- PHAR tại ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng h&oacute;a như sau:<br />\r\n<strong><em>C&aacute;c trường hợp được quyền đổi - trả sản phẩm:</em></strong><br />\r\nĐổi - trả do đơn h&agrave;ng sai hoặc thiếu sản phẩm so với th&ocirc;ng tin đặt h&agrave;ng.<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi do qu&aacute; tr&igrave;nh vận chuyển (hộp thuốc bị bể, ẩm mốc,&hellip;).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi sản xuất (nh&atilde;n m&aacute;c kh&ocirc;ng r&otilde; chữ, th&ocirc;ng tin tr&ecirc;n bao b&igrave; sản phẩm kh&ocirc;ng ch&iacute;nh x&aacute;c, sản phẩm đ&atilde; bị mở trước khi đến tay kh&aacute;ch h&agrave;ng...).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền do lỗi giao h&agrave;ng sản phẩm hết hạn sử dụng.<br />\r\n<strong><em>Điều kiện bắt buộc:</em></strong><br />\r\nSản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng, c&ograve;n nguy&ecirc;n hộp, tem, m&aacute;c, seal (seal vỏ hộp v&agrave; seal chai thuốc).<br />\r\nTrong trường hợp Kh&aacute;ch h&agrave;ng đ&atilde; khui seal vỏ hộp v&agrave; ph&aacute;t hiện chai thuốc c&oacute; lỗi sản xuất, vui l&ograve;ng chụp h&igrave;nh v&agrave; gọi Hotline để BP CSKH hướng dẫn th&ecirc;m.<br />\r\nĐối với c&aacute;c sản phẩm đ&atilde; khui seal chai thuốc, DP GREEN- PHAR xin được từ chối đổi trả.<br />\r\nQu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN- PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<h2>Thời hạn đổi trả h&agrave;ng</h2>\r\n\r\n<p>Sau khi nhận được sản phẩm của kh&aacute;ch h&agrave;ng gửi trả, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng sẽ tiến h&agrave;nh kiểm tra chất lượng sản phẩm ngay lập tức. Quy tr&igrave;nh kiểm tra h&agrave;ng đổi trả được thực hiện trong v&ograve;ng từ 1-3 ng&agrave;y l&agrave;m việc, kết quả kiểm tra sẽ được th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng qua email v&agrave; tin nhắn điện thoại sau khi ho&agrave;n tất.<br />\r\nSau khi nhận được email hoặc tin nhắn th&ocirc;ng b&aacute;o từ DP GREEN- PHAR, kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra t&igrave;nh trạng đổi trả hoặc ho&agrave;n tiền th&ocirc;ng qua c&ocirc;ng cụ kiểm tra đơn h&agrave;ng của&nbsp;<strong>DP GREEN-PHAR</strong>.</p>\r\n\r\n<h2>Phương thức đổi trả h&agrave;ng đ&atilde; mua</h2>\r\n\r\n<p><strong><em>Bước 1:</em></strong> Đăng k&iacute;<br />\r\nKh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR qua hotline (024) 6262.7731 hoặc truy cập trang web: WWW.GREENPHAR.COM &nbsp;v&agrave; cung cấp th&ocirc;ng tin chi tiết về sản phẩm lỗi gồm:<br />\r\n- T&ecirc;n sản phẩm<br />\r\n- M&atilde; số đơn h&agrave;ng, l&ocirc; sản xuất, hạn sử dụng<br />\r\n- Lỗi sản phẩm (m&ocirc; tả chi tiết v&agrave; k&egrave;m ảnh chụp)<br />\r\n<strong><em>Bước 2:</em></strong> Nhận tin nhắn x&aacute;c nhận đ&atilde; đăng k&yacute; đổi/trả th&agrave;nh c&ocirc;ng v&agrave; email hướng dẫn đ&oacute;ng g&oacute;i sản phẩm ho&agrave;n trả.<br />\r\nSau khi y&ecirc;u cầu đổi/trả được chấp nhận, DP GREEN-PHAR sẽ gửi đến qu&yacute; kh&aacute;ch một tin nhắn v&agrave; email hướng dẫn c&aacute;ch gửi trả sản phẩm.<br />\r\n<strong><em>Bước 3:</em></strong> Đ&oacute;ng g&oacute;i theo hướng dẫn v&agrave; mang sản phẩm đến Bưu Điện<br />\r\n<strong><em>Bước 4:</em></strong> Gửi trả sản phẩm về DP GREEN-PHAR<br />\r\nKh&aacute;ch h&agrave;ng vui l&ograve;ng gửi sản phẩm qua đường Bưu Điện về DP GREEN-PHAR trong v&ograve;ng 3 ng&agrave;y l&agrave;m việc kể từ khi th&ocirc;ng b&aacute;o với bộ phận Chăm S&oacute;c Kh&aacute;ch H&agrave;ng v&agrave; gửi k&egrave;m:<br />\r\n- H&oacute;a đơn mua h&agrave;ng hoặc đ&iacute;nh k&egrave;m giấy ghi ch&uacute; c&oacute; m&atilde; đơn h&agrave;ng<br />\r\n- H&oacute;a đơn gi&aacute; trị gia tăng (nếu c&oacute;)<br />\r\n- Phụ kiện đi k&egrave;m sản phẩm v&agrave; tặng khuyến m&atilde;i k&egrave;m theo (nếu c&oacute;)<br />\r\n<strong><em>Một số lưu &yacute; khi gửi h&agrave;ng đến bưu điện:</em></strong><br />\r\n- Kh&ocirc;ng ni&ecirc;m phong bề mặt th&ugrave;ng ​trước khi ho&agrave;n tất qu&aacute; tr&igrave;nh gửi h&agrave;ng ​v&igrave; c&oacute; thể bưu điện cần kiểm tra trước khi nhận h&agrave;ng. Đ&oacute;ng g&oacute;i, ch&egrave;n l&oacute;t sản phẩm như ban đầu.<br />\r\n- Cung cấp cho nh&acirc;n vi&ecirc;n bưu điện m&atilde; đơn h&agrave;ng v&agrave; m&atilde; gửi h&agrave;ng b&ecirc;n DP GREEN-PHAR đ&atilde; cung cấp. - Lưu &yacute; kh&ocirc;ng d&aacute;n băng keo trực tiếp l&ecirc;n hộp sản phẩm v&igrave; y&ecirc;u cầu đổi/trả c&oacute; thể sẽ bị từ chối nếu hộp sản phẩm bị hư hỏng.<br />\r\n- Vui l&ograve;ng li&ecirc;n hệ Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR &nbsp;(024) 6262. 7731&nbsp;khi c&oacute; bất cứ kh&oacute; khăn xảy ra trong qu&aacute; tr&igrave;nh l&agrave;m việc với bưu điện.<br />\r\n- Điền th&ocirc;ng tin m&atilde; số đơn h&agrave;ng l&ecirc;n th&ugrave;ng h&agrave;ng v&agrave; gửi về DP GREEN- PHAR theo địa chỉ nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng đ&atilde; cung cấp.<br />\r\n<strong>Note:</strong>&nbsp;<em>Trong trường hợp kh&ocirc;ng nhớ th&ocirc;ng tin ở bước số 4, qu&yacute; kh&aacute;ch c&oacute; thể xuất tr&igrave;nh tin nhắn hoặc email nhận được từ DP GREEN- PHAR đ&atilde; gửi (ở bước 2) cho nh&acirc;n vi&ecirc;n bưu điện v&agrave; l&agrave;m theo hướng dẫn.</em><br />\r\n<span style=\"color:#cc0000\">Lưu &yacute;:</span> Kh&aacute;ch h&agrave;ng trong qu&aacute; tr&igrave;nh gửi trả sản phẩm về DP GREEN-PHAR sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm về trạng th&aacute;i nguy&ecirc;n vẹn của sản phẩm.<br />\r\nSau khi nhận được sản phẩm kh&aacute;ch h&agrave;ng gửi trả về, DP GREEN- PHAR sẽ phản hồi v&agrave; cập nhật th&ocirc;ng tin tr&ecirc;n từng giai đoạn xử l&yacute; đến kh&aacute;ch h&agrave;ng qua email hoặc sms.</p>\r\n\r\n<h2>C&aacute;ch thức nhận lại tiền khi mua h&agrave;ng online</h2>\r\n\r\n<h3>Kh&aacute;ch h&agrave;ng sẽ nhận được số tiền ho&agrave;n trả sau bao l&acirc;u?</h3>\r\n\r\n<p>DP GREEN- PHAR sẽ ho&agrave;n tiền cho kh&aacute;ch h&agrave;ng trong trường hợp kh&aacute;ch h&agrave;ng trả hay hủy đơn h&agrave;ng.<br />\r\nPhương thức ho&agrave;n tiền bằng c&aacute;ch chuyển khoản ng&acirc;n h&agrave;ng.<br />\r\nTh&ocirc;ng tin sẽ được cập nhật đến cho qu&yacute; kh&aacute;ch bằng email hoặc SMS khi thủ tục ho&agrave;n tiền được tiến h&agrave;nh.<br />\r\n<strong>Phương thức ho&agrave;n tiền:</strong> Chuyển khoản ng&acirc;n h&agrave;ng<br />\r\n<strong>Thời gian ho&agrave;n tiền:</strong> 3 - 5 ng&agrave;y l&agrave;m việc<br />\r\nTrong trường hợp đ&atilde; vượt qu&aacute; c&aacute;c khoảng thời gian ho&agrave;n tiền tr&ecirc;n nhưng kh&aacute;ch h&agrave;ng vẫn chưa nhận được tiền, xin vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng để được hỗ trợ hoặc Tổng đ&agrave;i Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR&nbsp;<strong>(024) 6262.7731</strong></p>\r\n\r\n<h3>Chi ph&iacute; cho việc đổi trả h&agrave;ng</h3>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n tiền ph&iacute; vận chuyển khi Kh&aacute;ch h&agrave;ng thực hiện gửi h&agrave;ng tại bưu điện. DP GREEN- PHAR sẽ kh&ocirc;ng ho&agrave;n trả chi ph&iacute; n&agrave;y. Tuy nhi&ecirc;n sẽ giao h&agrave;ng miễn ph&iacute; đối với những đơn h&agrave;ng thuộc nh&oacute;m &ldquo;Đổi h&agrave;ng&quot;. Nếu c&oacute; bất k&igrave; vấn đề g&igrave; ph&aacute;t sinh, qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ với bộ phận CSKH của DP GREEN-PHAR theo Hotline&nbsp;<strong>(024) 6262.7731</strong></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(48, 41, 'en', 'Chính sách đổi - trả', '', '<p>Nội dung Ch&iacute;nh s&aacute;ch đổi - trả</p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(49, 42, 'vn', 'Hệ thống nhà thuốc', '', '<p>T&acirc;t cả c&aacute;c sản phẩm của DP GREEN-PHAR&nbsp;đ&atilde; được ph&acirc;n phối tại hơn 1000 nh&agrave; thuốc tại c&aacute;c tỉnh th&agrave;nh tr&ecirc;n khắp miền bắc<br />\r\nVui l&ograve;ng li&ecirc;n hệ tổng đ&agrave;i CSKH: <em><strong>024. 6262.7731</strong></em> để biết địa chỉ nh&agrave; thuốc gần nhất nơi bạn ở.<br />\r\nXin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng sản phẩm của <strong>DP GREEN-PHAR</strong>.</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(50, 42, 'en', 'Hệ thống nhà thuốc', '', '<p>Nội dung&nbsp;Hệ thống nh&agrave; thuốc</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(51, 43, 'vn', 'Hình thức giao hàng', '', '<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN- PHAR sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; gửi email/sms về th&ocirc;ng tin đơn h&agrave;ng trong thời gian sớm nhất. Hiện tại DP GREEN-PHAR hợp t&aacute;c với ViettelPost - đơn vị chuyển ph&aacute;t h&agrave;ng đầu tại Việt Nam để thực hiện chuyển ph&aacute;t c&aacute;c sản phẩm tới Qu&yacute; kh&aacute;ch h&agrave;ng.<br />\r\nSau khi x&aacute;c nhận th&agrave;nh c&ocirc;ng, đơn h&agrave;ng sẽ được giao đến Qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y: <strong>Tại Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội:</strong> Giao h&agrave;ng sau 1 - 4h l&agrave;m việc<br />\r\n<strong>C&aacute;c khu vực tỉnh, th&agrave;nh c&ograve;n lại:</strong> Giao h&agrave;ng sau 1 - 2 ng&agrave;y l&agrave;m việc<br />\r\n<em>*Lưu &yacute;: thời gian giao h&agrave;ng dự kiến ở tr&ecirc;n chỉ &aacute;p dụng cho c&aacute;c đơn h&agrave;ng trong nước.</em> Tất cả c&aacute;c đơn h&agrave;ng từ khắp cả nước sẽ được chia l&agrave;m 2 khu vực v&agrave; ph&iacute; vận chuyển &aacute;p dụng cho tất cả c&aacute;c đơn h&agrave;ng của Qu&yacute; kh&aacute;ch (trong đ&oacute;, DP GREEN-PHAR đ&atilde; hỗ trợ 50-70% chi ph&iacute; giao h&agrave;ng v&agrave; ph&iacute; thu tiền hộ):<br />\r\n<strong>Khu vực 1:</strong>&nbsp;Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội l&agrave; 10.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>Khu vực 2:</strong>&nbsp;C&aacute;c tỉnh, th&agrave;nh phố c&ograve;n lại tr&ecirc;n to&agrave;n quốc l&agrave; 20.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>FREE SHIP NẾU ĐƠN H&Agrave;NG TR&Ecirc;N 600.000 VNĐ.</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN-PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao h&agrave;ng c&oacute; thể ph&aacute;t sinh những vấn đề ngo&agrave;i &yacute; muốn về ph&iacute;a Kh&aacute;ch h&agrave;ng khiến việc giao h&agrave;ng bị chậm trễ. DP GREEN-PHAR sẽ linh động giải quyết cho Kh&aacute;ch h&agrave;ng trong từng trường hợp như sau:<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cung cấp ch&iacute;nh x&aacute;c v&agrave; đầy đủ địa chỉ giao h&agrave;ng v&agrave; số điện thoại li&ecirc;n lạc.<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng sẵn s&agrave;ng để nhận h&agrave;ng v&agrave;o thời điểm giao h&agrave;ng.<br />\r\n- DP GREEN- PHAR đ&atilde; giao h&agrave;ng đ&uacute;ng hẹn theo th&ocirc;ng tin giao h&agrave;ng nhưng kh&ocirc;ng li&ecirc;n lạc được với Kh&aacute;ch h&agrave;ng v&agrave; chờ tại địa điểm giao h&agrave;ng qu&aacute; 15 ph&uacute;t, mọi nỗ lực của nh&acirc;n vi&ecirc;n giao h&agrave;ng nhằm li&ecirc;n hệ với Kh&aacute;ch h&agrave;ng đều kh&ocirc;ng th&agrave;nh c&ocirc;ng.<br />\r\n- Những trường hợp bất khả kh&aacute;ng như thi&ecirc;n tai, tai nạn giao th&ocirc;ng, gi&aacute;n đoạn mạng lưới giao th&ocirc;ng, đứt c&aacute;p, hệ thống bị tấn c&ocirc;ng.<br />\r\nC&aacute;c trường hợp kh&aacute;c: Trong trường hợp xảy ra sự cố phức tạp hơn, DP GREEN- PHAR bảo đảm quyền lợi lớn nhất thuộc về Kh&aacute;ch h&agrave;ng.</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', ''),
(52, 43, 'en', 'Hình thức giao hàng', '', '<p>Nội dung H&igrave;nh thức giao h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', ''),
(53, 44, 'vn', 'Hình thức thanh toán', '', '<h2>DP GREEN- PHAR hỗ trợ 4 phương thức thanh to&aacute;n cho tất cả c&aacute;c đơn h&agrave;ng tr&ecirc;n hệ thống.</h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n khi nhận h&agrave;ng (COD): </strong>Qu&yacute; kh&aacute;ch sẽ thanh to&aacute;n tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng ngay sau khi nhận được h&agrave;ng.<br />\r\n<strong>2. Thanh to&aacute;n bằng Internet Banking:</strong> Thẻ/t&agrave;i khoản ATM của qu&yacute; kh&aacute;ch c&oacute; đăng k&iacute; sử dụng dịch vụ internet banking, DP GREEN- PHAR hiện hỗ trợ thanh to&aacute;n cho phần lớn c&aacute;c ng&acirc;n h&agrave;ng tại Việt Nam:<br />\r\n<img alt=\"\" src=\"../image/pay.jpg\" /> <strong>3. Thanh to&aacute;n bằng thẻ quốc tế Visa, Master Card:</strong>&nbsp;Ph&iacute; thanh to&aacute;n t&ugrave;y thuộc v&agrave;o từng loại thẻ qu&yacute; kh&aacute;ch d&ugrave;ng v&agrave; ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ. Vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ để biết r&otilde; ph&iacute; thanh to&aacute;n ph&aacute;t sinh.<br />\r\n<strong>4. Chuyển khoản trực tiếp tại ng&acirc;n h&agrave;ng:<br />\r\nCHỦ T&Agrave;I KHOẢN: CT CỔ PHẦN DP GREEN PHAR<br />\r\nSTK: 0691000342789<br />\r\nchi nh&aacute;nh h&agrave; t&acirc;y, Vietcombank.</strong><br />\r\n&quot;T&ecirc;n người mua h&agrave;ng, Tỉnh/th&agrave;nh phố&quot; chuyển tiền cho đơn h&agrave;ng ng&agrave;y ... th&aacute;ng ... năm ...<br />\r\n<em>Mọi thắc mắc v&agrave; g&oacute;p &yacute; vui l&ograve;ng li&ecirc;n hệ Hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262.7731</strong></em></p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', ''),
(54, 44, 'en', 'Hình thức thanh toán', '', '<p>Nội dung&nbsp;H&igrave;nh thức thanh to&aacute;n</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', ''),
(55, 45, 'vn', 'Điều khoản sử dụng', '', '<h2>1. Giới thiệu</h2>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với trang Thương mại điện tử DP GREEN-PHAR<br />\r\nGREENPHAR.COM l&agrave; trang Thương mại điện tử của C&ocirc;ng ty Cổ phần DP GREEN- PHAR - chuy&ecirc;n ph&acirc;n phối độc quyền c&aacute;c sản phẩm do Armephaco 120- x&iacute; nghiệp dược phẩm 120, qu&acirc;n đội, nghi&ecirc;n cứu v&agrave; sản xuất, được cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/4/2015<br />\r\nC&ocirc;ng ty CPDP GREEN- PHAR c&oacute; trụ sở ch&iacute;nh đặt tại 19, Ng&otilde; 4, Phố Văn La- H&agrave; Đ&ocirc;ng- H&agrave; Nội.<br />\r\nKhi bạn truy cập v&agrave;o website greenphar.com của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; bạn đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Website c&oacute; quyền chỉnh sửa, thay đổi, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Điều khoản mua b&aacute;n h&agrave;ng h&oacute;a n&agrave;y v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n website m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi bạn tiếp tục sử dụng website, sau khi c&aacute;c thay đổi về Điều khoản n&agrave;y được đăng tải, c&oacute; nghĩa l&agrave; bạn chấp nhận với những thay đổi đ&oacute; của ch&uacute;ng t&ocirc;i.<br />\r\nV&igrave; vậy, bạn vui l&ograve;ng kiểm tra thường xuy&ecirc;n v&agrave; cập nhật những thay đổi trong Điều khoản mua b&aacute;n tr&ecirc;n website của ch&uacute;ng t&ocirc;i để đảm bảo quyền lợi của m&igrave;nh.</p>\r\n\r\n<h2>2. Hướng dẫn sử dụng website</h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/Hydrangeas.jpg\" width=\"600\" /></p>\r\n\r\n<p>Khi truy cập v&agrave;o website của DP GREEN-PHAR, bạn phải đảm bảo đủ 18 tuổi, hoặc c&oacute; sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p. Vui l&ograve;ng đảm bảo bạn c&oacute; đầy đủ h&agrave;nh vi d&acirc;n sự để thực hiện c&aacute;c giao dịch mua b&aacute;n h&agrave;ng h&oacute;a theo quy định hiện h&agrave;nh của ph&aacute;p luật Việt Nam.<br />\r\nCh&uacute;ng t&ocirc;i sẽ cũng cấp cho bạn một t&agrave;i khoản (Account) sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n website greenphar.com trong khu&ocirc;n khổ Điều khoản v&agrave; Điều kiện sử dụng đ&atilde; đề ra.<br />\r\nBạn sẽ phải đăng k&yacute; t&agrave;i khoản với th&ocirc;ng tin c&aacute; nh&acirc;n x&aacute;c thực v&agrave; phải cập nhật nếu c&oacute; bất kỳ thay đổi n&agrave;o trong qu&aacute; tr&igrave;nh sử dụng. Mỗi c&aacute; nh&acirc;n khi truy cập v&agrave;o website của DP GREEN- PHAR phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. B&ecirc;n cạnh đ&oacute;, bạn phải th&ocirc;ng b&aacute;o ngay cho ch&uacute;ng t&ocirc;i biết khi t&agrave;i khoản bị truy cập tr&aacute;i ph&eacute;p. Đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do bạn kh&ocirc;ng tu&acirc;n thủ quy định v&agrave; c&aacute;c điều khoản mua b&aacute;n đ&atilde; cam kết ph&iacute;a DP GREEN-PHAR sẽ kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"221\" src=\"/image/images/Cataloge%20Rem-File%20OK%2003.jpg\" width=\"600\" /></p>\r\n\r\n<p><img alt=\"\" height=\"900\" src=\"/image/images/11___.png\" width=\"900\" /><br />\r\nNghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của website n&agrave;y dưới mọi h&igrave;nh thức với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được sự cho ph&eacute;p bằng văn bản từ ph&iacute;a DP GREEN- PHAR. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy t&agrave;i khoản của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.<br />\r\nBạn sẽ nhận được email quảng c&aacute;o từ website GREENPHAR.COM của ch&uacute;ng t&ocirc;i trong suốt qu&aacute; tr&igrave;nh đăng k&iacute;. Nếu cảm thấy bị l&agrave;m phiền, bạn c&oacute; thể từ chối nhận email bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</p>\r\n\r\n<h2>3. &Yacute; kiến của kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Tất cả nội dung tr&ecirc;n website v&agrave; những &yacute; kiến, nhận x&eacute;t ph&ecirc; b&igrave;nh của qu&yacute; kh&aacute;ch h&agrave;ng đều l&agrave; t&agrave;i sản của DP GREEN-PHAR ch&uacute;ng t&ocirc;i. Nếu ph&aacute;t hiện bất kỳ th&ocirc;ng tin giả mạo n&agrave;o, ch&uacute;ng t&ocirc;i sẽ v&ocirc; hiệu h&oacute;a t&agrave;i khoản của bạn ngay lập tức hoặc &aacute;p dụng c&aacute;c biện ph&aacute;p kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</p>\r\n\r\n<h2>4. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</h2>\r\n\r\n<p>Với bất kỳ l&yacute; do g&igrave; li&ecirc;n quan đến lỗi kỹ thuật, hệ thống một c&aacute;ch kh&aacute;ch quan v&agrave;o bất kỳ l&uacute;c n&agrave;o, ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch.<br />\r\nTrong qu&aacute; tr&igrave;nh x&aacute;c nhận đơn h&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ của bạn để thuận tiện cho giao dịch.<br />\r\nDP GREEN-PHAR cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n website hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ph&iacute;a DP GREEN-PHAR ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho qu&yacute; kh&aacute;ch.<br />\r\nDP GREEN-PHAR cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o của qu&yacute; kh&aacute;ch d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; thanh to&aacute;n.</p>\r\n\r\n<h2>5. Thay đổi hoặc hủy bỏ giao dịch</h2>\r\n\r\n<p>Trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y:<br />\r\nTh&ocirc;ng b&aacute;o cho bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR về việc hủy giao dịch qua hotline (024) 6262. 7731</p>\r\n\r\n<h2>6. Giải quyết lỗi nhập sai th&ocirc;ng tin</h2>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c khi tham gia giao dịch tại website greenphar.com. Trong trường hợp kh&aacute;ch h&agrave;ng nhập sai th&ocirc;ng tin v&agrave; gửi v&agrave;o site thương mại điện tử greenphar.com, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối thực hiện giao dịch. Ngo&agrave;i ra, trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền đơn phương chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y: Li&ecirc;n hệ với bộ phậm CSKH của DP GREEN-PHAR qua hotline (024) 6262. 7731<br />\r\nTrả lại sản phẩm đ&atilde; nhận v&agrave; kh&ocirc;ng c&oacute; dấu hiệu khui mở hoặc đ&atilde; sử dụng.<br />\r\nTrong trường hợp sai th&ocirc;ng tin ph&aacute;t sinh từ ph&iacute;a DP GREEN-PHAR m&agrave; DP GREEN-PHAR c&oacute; thể chứng minh đ&oacute; l&agrave; lỗi của hệ thống, ch&uacute;ng t&ocirc;i sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm v&agrave; đền b&ugrave; cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>7. Quyền ph&aacute;p l&yacute;</h2>\r\n\r\n<p>C&aacute;c điều kiện, điều khoản v&agrave; nội dung của website n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam. T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<h2>8. Quy định về bảo mật</h2>\r\n\r\n<p>Website GREENPHAR.COM của ch&uacute;ng t&ocirc;i xem trọng việc bảo mật th&ocirc;ng tin, sử dụng c&aacute;c biện ph&aacute;p tốt nhất để bảo mật th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Trong qu&aacute; tr&igrave;nh thanh to&aacute;n, th&ocirc;ng tin của qu&yacute; kh&aacute;ch sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Bạn sẽ tho&aacute;t khỏi chế độ an to&agrave;n sau khi ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt h&agrave;ng.<br />\r\nQu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Website greenphar.com cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết.<br />\r\nMọi th&ocirc;ng tin giao dịch sẽ được bảo mật ngoại trừ trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu.</p>\r\n\r\n<h2>9. C&aacute;c phương thức thanh to&aacute;n &aacute;p dụng tại GREENPHAR.COM</h2>\r\n\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể tham khảo c&aacute;c phương thức thanh to&aacute;n sau đ&acirc;y v&agrave; lựa chọn &aacute;p dụng phương thức ph&ugrave; hợp:</p>\r\n\r\n<h3>C&aacute;ch 1: Thanh to&aacute;n trực tiếp (T&igrave;m đến chuỗi nh&agrave; thuốc b&aacute;n lẻ)</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: Đến địa chỉ nh&agrave; thuốc b&aacute;n lẻ<br />\r\nBước 3: Người mua thanh to&aacute;n v&agrave; nhận h&agrave;ng</p>\r\n\r\n<h3>C&aacute;ch 2: Nhận h&agrave;ng thanh to&aacute;n tiền - COD</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 4: Giao h&agrave;ng<br />\r\nBước 5: Nhận h&agrave;ng v&agrave; thanh to&aacute;n</p>\r\n\r\n<h3>C&aacute;ch 3: Thanh to&aacute;n online qua thẻ t&iacute;n dụng, chuyển khoản</h3>\r\n\r\n<p>Bước 1: T&igrave;m hiểu th&ocirc;ng tin về sản phẩm<br />\r\nBước 2: X&aacute;c thực đơn h&agrave;ng (qua điện thoại, tin nhắn, email)<br />\r\nBước 3: Kh&aacute;ch h&agrave;ng thực hiện thanh to&aacute;n 100% gi&aacute; trị đơn h&agrave;ng (đơn h&agrave;ng thanh to&aacute;n th&agrave;nh c&ocirc;ng sẽ b&aacute;o qua điện thoại, tin nhắn, email)<br />\r\nBước 4: Bộ phận CSKH của DP GREEN-PHAR sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin v&agrave; đơn h&agrave;ng, đủ điều kiện đơn h&agrave;ng sẽ được chuyển qua cho bộ phận giao h&agrave;ng<br />\r\nBước 5: Giao h&agrave;ng<br />\r\nBước 6: Kh&aacute;ch h&agrave;ng nhận h&agrave;ng.</p>\r\n\r\n<h2>10. Giải quyết tranh chấp</h2>\r\n\r\n<p>Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến giao dịch tại greenphar.com hoặc c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết bằng h&igrave;nh thức thương lượng, h&ograve;a giải, trọng t&agrave;i v&agrave;/hoặc T&ograve;a &aacute;n theo Luật bảo vệ Người ti&ecirc;u d&ugrave;ng Chương 4 về Giải quyết tranh chấp giữa người ti&ecirc;u d&ugrave;ng v&agrave; tổ chức, c&aacute; nh&acirc;n kinh doanh h&agrave;ng h&oacute;a, dịch vụ.</p>\r\n\r\n<h2>11. Luật ph&aacute;p v&agrave; thẩm quyền tại L&atilde;nh thổ Việt Nam</h2>\r\n\r\n<p>Tất cả c&aacute;c Điều Khoản, Điều Kiện v&agrave; Hợp Đồng n&agrave;y (v&agrave; tất cả nghĩa vụ ph&aacute;t sinh ngo&agrave;i hợp đồng hoặc c&oacute; li&ecirc;n quan) sẽ bị chi phối v&agrave; được hiểu theo luật ph&aacute;p của Việt Nam. Nếu c&oacute; tranh chấp ph&aacute;t sinh bởi c&aacute;c Quy định Sử dụng n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại/khiếu kiện l&ecirc;n T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam để giải quyết.</p>\r\n', '', '', '', '', '', 1, 'dieu-khoan-su-dung', 'Điều khoản sử dụng', '', ''),
(56, 45, 'en', 'Điều khoản sử dụng', '', '<p>Nội dung&nbsp;Điều khoản sử dụng</p>\r\n', '', '', '', '', '', 1, 'dieu-khoan-su-dung', 'Điều khoản sử dụng', '', ''),
(57, 46, 'vn', 'Tuyển đại lý dòng nước hoa Pháp cao cấp dành cho xe oto', 'Tuyển đại lý dòng nước hoa Pháp Aroma Car dành riêng cho xe oto để khử mùi và mang lại hương thơm dễ chịu, sảng khoái cho người dùng.', '<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Hiện nay, ch&uacute;ng t&ocirc;i đang tuyển đại l&yacute; khắp cả nước để phấn đấu trở th&agrave;nh c&ocirc;ng ty lớn mạnh nhất trong lĩnh vực n&agrave;y, gi&uacute;p giải quyết vấn đề của kh&aacute;ch h&agrave;ng một c&aacute;ch hiệu quả, đồng thời tạo sự vững mạnh với c&aacute;c đại l&yacute; to&agrave;n quốc.</span></span></span></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:22px\"><span style=\"color:#000000\"><strong><span style=\"font-family:Times New Roman,Times,serif\">Mục ti&ecirc;u</span></strong></span></span></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- X&acirc;y dựng mối quan hệ tr&ecirc;n cơ sở cam kết hợp t&aacute;c v&agrave; chia sẻ mục ti&ecirc;u</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Hỗ trợ đ&ocirc;i b&ecirc;n c&ugrave;ng ph&aacute;t triển</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Hợp t&aacute;c c&ocirc;ng bằng, t&ocirc;n trọng lẫn nhau tr&ecirc;n to&agrave;n bộ k&ecirc;nh ph&acirc;n phối</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Đảm bảo t&iacute;nh cạnh tranh của sản phẩm về gi&aacute; v&agrave; chất lượng</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"tuyen-dai-ly\" height=\"338\" src=\"https://i.imgur.com/D9v49Dz.jpg\" width=\"600\" /></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"color:#000000\"><em><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Aroma Car hướng tới mục ti&ecirc;u x&acirc;y dựng sự vững mạnh v&agrave; ph&aacute;t triển, đ&ocirc;i b&ecirc;n c&ugrave;ng c&oacute; lợi với c&aacute;c đại l&yacute; tr&ecirc;n to&agrave;n quốc</span></span></em></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:22px\"><span style=\"color:#000000\"><strong><span style=\"font-family:Times New Roman,Times,serif\">Sản phẩm</span></strong></span></span></h2>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Aroma Car l&agrave; d&ograve;ng sản phẩm nước hoa Ph&aacute;p cao cấp d&agrave;nh cho oto với thiết kế sang trọng, tinh tế c&ugrave;ng hương thơm dễ chịu, tươi m&aacute;t v&agrave; tạo tinh thần sảng kho&aacute;i khi l&aacute;i xe. Aroma Car l&agrave; một trong những thương hiệu nổi tiếng h&agrave;ng đầu tại ch&acirc;u &Acirc;u, dẫn đầu danh s&aacute;ch c&aacute;c sản phẩm chăm s&oacute;c c&oacute; hương thơm tốt nhất cho oto do Fobes Diamont b&igrave;nh chọn v&agrave;o năm 2017.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Th&agrave;nh phần của nước hoa Aroma Car được chiết xuất 100% bằng tinh dầu tự nhi&ecirc;n, kh&ocirc;ng h&oacute;a chất, an to&agrave;n tuyệt đối với sức khỏe của người d&ugrave;ng v&agrave; được chăm ch&uacute;t cả về mẫu m&atilde; lẫn hương thơm.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"tuyen-dai-ly\" height=\"198\" src=\"https://i.imgur.com/X9lKjFi.jpg\" width=\"600\" /></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"color:#000000\"><em><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Aroma Car &ndash; Sản phẩm ho&agrave;n to&agrave;n từ tự nhi&ecirc;n, an to&agrave;n tuyệt đối v&agrave; đem lại cảm gi&aacute;c thoải m&aacute;i, dễ chịu cho người sử dụng</span></span></em></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><strong><span style=\"font-size:22px\"><span style=\"font-family:Times New Roman,Times,serif\">Đối tượng cần hợp t&aacute;c</span></span></strong></span></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"color:#000000\">Aroma Car cần </span><a href=\"http://aroma-car.vn/\"><span style=\"color:#16a085\"><strong>tuyển đại l&yacute;</strong></span></a><span style=\"color:#000000\"> với c&ocirc;ng ty hoặc c&aacute; nh&acirc;n l&agrave;m về ng&agrave;nh xe oto như chăm s&oacute;c xe, h&atilde;ng xe oto, nội thất xe, dịch vụ về lốp xe, detailing. Ngo&agrave;i ra, Aroma Car cũng l&agrave; k&ecirc;nh ph&acirc;n phối tại c&aacute;c trung t&acirc;m thương mại, cửa h&agrave;ng mỹ phẩm, si&ecirc;u thị,&hellip;</span></span></span></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:22px\"><strong><span style=\"font-family:Times New Roman,Times,serif\">Ch&iacute;nh s&aacute;ch hỗ trợ đối với đại l&yacute;</span></strong></span></span></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Th&ocirc;ng tin về đại l&yacute; sẽ được quảng c&aacute;o c&ugrave;ng nh&agrave; ph&acirc;n phối tr&ecirc;n website của Aroma Car</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Đại l&yacute; sẽ được cập nhật th&ocirc;ng tin về gi&aacute; cả, sản phẩm, h&agrave;ng h&oacute;a, ch&iacute;nh s&aacute;ch của nh&agrave; ph&acirc;n phối, c&aacute;c t&agrave;i liệu th&uacute;c đẩy b&aacute;n h&agrave;ng cũng như c&aacute;c chương tr&igrave;nh marketing.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Đại l&yacute; sẽ trở th&agrave;nh k&ecirc;nh ph&acirc;n phối v&agrave; được Aroma Car giới thiệu kh&aacute;ch h&agrave;ng tr&ecirc;n địa b&agrave;n.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"tuyen-dai-ly\" height=\"336\" src=\"https://i.imgur.com/JZ9fhez.jpg\" width=\"600\" /></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><span style=\"color:#000000\"><em><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Aroma Car c&oacute; ch&iacute;nh s&aacute;ch hỗ trợ ưu đ&atilde;i d&agrave;nh ri&ecirc;ng cho c&aacute;c đại l&yacute;</span></span></em></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h2 dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:22px\"><strong><span style=\"font-family:Times New Roman,Times,serif\">Y&ecirc;u cầu đối với đại l&yacute;</span></strong></span></span></h2>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Hỗ trợ c&aacute;c chương tr&igrave;nh quảng c&aacute;o, khuyến m&atilde;i do Aroma Car tổ chức</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Cam kết c&aacute;c kinh doanh c&aacute;c sản phẩm kh&aacute;c c&ugrave;ng loại do Aroma Car ph&acirc;n phối</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Thỏa thuận v&agrave; thống nhất về gi&aacute; trị cũng như điều khoản hợp đồng trước khi k&yacute; kết ch&iacute;nh thức</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">- Kiểm tra chi tiết sản phẩm khi nhận h&agrave;ng trước khi k&yacute; v&agrave;o bi&ecirc;n bản giao nhận để tr&aacute;nh c&aacute;c vấn đề ph&aacute;t sinh.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\">Với chiến lược c&ugrave;ng nhau ph&aacute;t triển để th&agrave;nh c&ocirc;ng, ch&uacute;ng t&ocirc;i </span></span></span><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"><a href=\"http://aroma-car.vn/tuyen-dai-ly-dong-nuoc-hoa-phap-cao-cap-danh-cho-xe-oto\"><span style=\"color:#16a085\"><strong>tuyển đại l&yacute;</strong></span></a></span></span><span style=\"color:#000000\"><span style=\"font-size:18px\"><span style=\"font-family:Times New Roman,Times,serif\"> nhằm ch&agrave;o đ&oacute;n tất cả mọi đơn vị c&ugrave;ng đồng h&agrave;nh tr&ecirc;n to&agrave;n quốc để đưa sản phẩm hương thơm cao cấp d&agrave;nh cho xe oto được vươn xa hơn, tới tay mọi người ti&ecirc;u d&ugrave;ng.</span></span></span></p>\r\n', '', '', '', '', '', 0, 'tuyen-dai-ly-dong-nuoc-hoa-phap-cao-cap-danh-cho-xe-oto', 'Tuyển đại lý dòng nước hoa Pháp cao cấp dành cho xe oto', 'Tuyển đại lý dòng nước hoa Pháp cao cấp dành cho xe oto', 'Tuyển đại lý dòng nước hoa Pháp Aroma Car dành riêng cho xe oto để khử mùi và mang lại hương thơm dễ chịu, sảng khoái cho người dùng.'),
(58, 46, 'en', 'page test 1', '', '', '', '', '', '', '', 0, 'page-test-1', 'page test 1', '', ''),
(59, 47, 'vn', 'page test 2', '', '', '', '', '', '', '', 0, 'page-test-2', 'page test 2', '', ''),
(60, 47, 'en', 'page test 2', '', '', '', '', '', '', '', 0, 'page-test-2', 'page test 2', '', ''),
(61, 48, 'vn', 'page test 3', '', '', '', '', '', '', '', 0, 'page-test-3', 'page test 3', '', ''),
(62, 48, 'en', 'page test 3', '', '', '', '', '', '', '', 0, 'page-test-3', 'page test 3', '', ''),
(63, 49, 'vn', 'page test 4', '', '', '', '', '', '', '', 0, 'page-test-4', 'page test 4', '', ''),
(64, 49, 'en', 'page test 4', '', '', '', '', '', '', '', 0, 'page-test-4', 'page test 4', '', ''),
(65, 50, 'vn', 'page test 5', '', '', '', '', '', '', '', 0, 'page-test-5', 'page test 5', '', ''),
(66, 50, 'en', 'page test 5', '', '', '', '', '', '', '', 0, 'page-test-5', 'page test 5', '', ''),
(67, 51, 'vn', 'page test 6', '', '', '', '', '', '', '', 0, 'page-test-6', 'page test 6', '', ''),
(68, 51, 'en', 'page test 6', '', '', '', '', '', '', '', 0, 'page-test-6', 'page test 6', '', ''),
(69, 52, 'vn', 'page test 7', '', '', '', '', '', '', '', 0, 'page-test-7', 'page test 7', '', ''),
(70, 52, 'en', 'page test 7', '', '', '', '', '', '', '', 0, 'page-test-7', 'page test 7', '', ''),
(71, 53, 'vn', 'page test 8', '', '', '', '', '', '', '', 0, 'page-test-8', 'page test 8', '', ''),
(72, 53, 'en', 'page test 8', '', '', '', '', '', '', '', 0, 'page-test-8', 'page test 8', '', '');
INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(73, 54, 'vn', 'Chính sách vận chuyển', '', '<h1 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><u><span style=\"font-family:Arial\"><img alt=\"Chính sách giao hàng SPRO\" height=\"284\" src=\"http://spro.vn/image/catalog/bt_products/free%20shipping8.jpg\" style=\"float:left\" width=\"300\" /></span></u></span></span></span></h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>1. PHẠM VI &Aacute;P DỤNG:</strong></span><br />\r\nTất cả c&aacute;c kh&aacute;ch h&agrave;ng mua sản phẩm tại Website;&nbsp;hoặc kh&aacute;ch h&agrave;ng đến trực tiếp xem v&agrave; mua h&agrave;ng tại c&ocirc;ng ty c&oacute; nhu cầu giao h&agrave;ng trực tiếp tại nh&agrave;.&nbsp;<br />\r\n<br />\r\n<span style=\"color:#ff3300\"><strong>2. H&Igrave;NH THỨC &Aacute;P DỤNG:</strong></span><br />\r\n<u>2.1. Giao h&agrave;ng miễn ph&iacute; :</u><br />\r\nGiao h&agrave;ng miễn ph&iacute;<strong>&nbsp;</strong><strong>&aacute;p dụng cho đơn h&agrave;ng gi&aacute; trị từ 1.000.000&nbsp;VNĐ</strong>&nbsp;trở l&ecirc;n, trong&nbsp;<strong>khu vực nội th&agrave;nh th&agrave;nh phố Hồ Ch&iacute; Minh.</strong><br />\r\nVới Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;<strong>mua c&aacute;c sản phẩm cồng kềnh (khối lượng tr&ecirc;n 50kg), hoặc đơn h&agrave;ng c&oacute; gi&aacute; trị tr&ecirc;n 5.000.000 VNĐ</strong>: Qu&yacute; Kh&aacute;ch an t&acirc;m v&igrave; cũng sẽ được SPRO.VN giao h&agrave;ng miễn ph&iacute;&nbsp;trong khu vực l&ecirc;n đến 40km t&iacute;nh từ trụ sở SPRO.VN đến địa chỉ của Qu&yacute; Kh&aacute;ch.<br />\r\n<br />\r\n<u>2.2 . Giao h&agrave;ng t&iacute;nh ph&iacute;:</u></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- Nếu Qu&yacute; Kh&aacute;ch h&agrave;ng ở qu&aacute; xa so với trụ sở SPRO.VN, nhưng c&oacute; đ<strong>ơn h&agrave;ng tr&ecirc;n 5.000.000VNĐ hoặc đơn h&agrave;ng cồng kềnh lớn hơn 50kg</strong>, Qu&yacute; Kh&aacute;ch an t&acirc;m với ch&iacute;nh s&aacute;ch vận chuyển ưu đ&atilde;i của ch&uacute;ng t&ocirc;i:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"color:#0000ff\"><strong><span style=\"font-family:Arial\">Miễn ph&iacute; giao h&agrave;ng cho 40km đầu ti&ecirc;n.</span></strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Với mỗi km tiếp theo, Qu&yacute; Kh&aacute;ch h&agrave;ng&nbsp;chỉ phải trả mức ph&iacute; rất mềm:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen\" height=\"34\" src=\"http://spro.vn/image/catalog/bt_products/them%2010k.png\" width=\"200\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">- C&aacute;c trường hợp giao h&agrave;ng dưới 1.000.000VNĐ hoặc vận chuyển bằng dịch vụ vận chuyển&nbsp;b&ecirc;n thứ 3&nbsp;sẽ t&iacute;nh ph&iacute; giao h&agrave;ng theo bảng ph&iacute; vận chuyển của h&atilde;ng vận chuyển thứ 3 hoặc theo bảng ph&iacute; của c&ocirc;ng ty. Chi ph&iacute; n&agrave;y sẽ được c&ocirc;ng ty th&ocirc;ng b&aacute;o v&agrave; x&aacute;c nhận với Qu&yacute; kh&aacute;ch trước khi Qu&yacute; kh&aacute;ch tiến h&agrave;nh thanh to&aacute;n v&agrave; c&ocirc;ng ty tiến h&agrave;nh gửi h&agrave;ng.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>3. THỜI GIAN GIAO H&Agrave;NG:</strong></span><br />\r\n-&nbsp;<strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;) t&ugrave;y v&agrave;o khoảng c&aacute;ch vận chuyển.<br />\r\n- Trong một số trường hợp kh&aacute;ch quan C&ocirc;ng ty c&oacute; thể giao h&agrave;ng chậm trễ do những điều kiện bất khả kh&aacute;ng như thời tiết xấu, điều kiện giao th&ocirc;ng kh&ocirc;ng thuận lợi, xe hỏng h&oacute;c tr&ecirc;n đường giao h&agrave;ng, trục trặc trong qu&aacute; tr&igrave;nh xuất h&agrave;ng.<br />\r\n- Trong thời gian chờ đợi nhận h&agrave;ng, Qu&yacute; kh&aacute;ch c&oacute; bất cứ thắc mắc g&igrave; về th&ocirc;ng tin vận chuyển xin vui l&ograve;ng li&ecirc;n hệ hotline của ch&uacute;ng t&ocirc;i để nhận trợ gi&uacute;p.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chính sách vận chuyển\" height=\"296\" src=\"http://spro.vn/image/catalog/bt_products/624.jpg\" title=\"Vận chuyển hàng hóa, vận chuyển giá rẻ, vận chuyển toàn quốc, vận chuyển  nhanh\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>Thời gian giao h&agrave;ng sẽ từ 1-4 ng&agrave;y</strong>&nbsp;(Kh&ocirc;ng t&iacute;nh ng&agrave;y nghỉ, lễ, tết&nbsp;)</span></em></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>4. TR&Aacute;CH NHIỆM VỚI H&Agrave;NG H&Oacute;A VẬN CHUYỂN.</strong></span><br />\r\n- C&ocirc;ng ty sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng ch&uacute;ng t&ocirc;i đến Qu&yacute; kh&aacute;ch.<br />\r\n- Qu&yacute; kh&aacute;ch c&oacute; tr&aacute;ch nhiệm kiểm tra h&agrave;ng h&oacute;a khi nhận h&agrave;ng. Khi ph&aacute;t hiện h&agrave;ng h&oacute;a bị hư hại, trầy xước, bể vỡ, m&oacute;p m&eacute;o, hoặc sai h&agrave;ng h&oacute;a th&igrave; k&yacute; x&aacute;c nhận t&igrave;nh trạng h&agrave;ng h&oacute;a với Nh&acirc;n vi&ecirc;n giao nhận v&agrave; th&ocirc;ng b&aacute;o ngay cho Bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng theo số hotline của C&ocirc;ng ty.<br />\r\n- Sau khi Qu&yacute;&nbsp;kh&aacute;ch đ&atilde; k&yacute; nhận h&agrave;ng m&agrave; kh&ocirc;ng ghi ch&uacute; hoặc c&oacute; &yacute; kiến về h&agrave;ng h&oacute;a. C&ocirc;ng ty kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm với những y&ecirc;u cầu đổi trả v&igrave; hư hỏng, trầy xước, bể vỡ, m&oacute;p m&eacute;o, sai h&agrave;ng h&oacute;a,&hellip; từ Qu&yacute; kh&aacute;ch sau n&agrave;y.<br />\r\n- Nếu dịch vụ vận chuyển do Qu&yacute; kh&aacute;ch chỉ định v&agrave; lựa chọn th&igrave; qu&yacute; kh&aacute;ch sẽ chịu tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; c&aacute;c rủi ro như mất m&aacute;t hoặc hư hại của h&agrave;ng h&oacute;a xảy ra trong suốt qu&aacute; tr&igrave;nh vận chuyển h&agrave;ng từ kho h&agrave;ng của c&ocirc;ng ty đến Qu&yacute; kh&aacute;ch. Kh&aacute;ch h&agrave;ng sẽ chịu tr&aacute;ch nhiệm cước ph&iacute; v&agrave; tổn thất li&ecirc;n quan.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><a href=\"http://spro.vn/van-chuyen\" style=\"box-sizing:border-box; color:#ff5011; text-decoration:none; cursor:pointer\"><span style=\"font-family:Arial\"><img alt=\"Chinh sach van chuyen SPRO\" height=\"224\" src=\"http://spro.vn/image/catalog/bt_products/free_shipping_0.jpg\" title=\"Chính sách vận chuyển\" width=\"300\" /></span></a></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\">Hotline:&nbsp;<strong>0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;</strong></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><span style=\"color:#ff3300\"><strong>5. C&Aacute;C ĐIỀU KIỆN KH&Aacute;C</strong></span><br />\r\n- Ch&iacute;nh s&aacute;ch giao h&agrave;ng miễn ph&iacute; kh&ocirc;ng &aacute;p dụng đối với những sản phẩm được mua trong chương tr&igrave;nh khuyến mại giờ v&agrave;ng, gi&aacute; sốc&hellip;..<br />\r\n- Chi ph&iacute; cầu đường, ph&iacute; v&agrave;o th&ocirc;n x&atilde; hoặc ph&iacute; đỗ xe tại chung cư do kh&aacute;ch h&agrave;ng tự thanh to&aacute;n.<br />\r\n- C&ocirc;ng ty chỉ giao h&agrave;ng cho đ&uacute;ng người nhận m&agrave; Qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute; khi mua h&agrave;ng. Trong qu&aacute; tr&igrave;nh giao h&agrave;ng nếu c&oacute; sự thay đổi người nhận một c&aacute;ch kh&ocirc;ng r&otilde; r&agrave;ng, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối giao h&agrave;ng v&agrave; y&ecirc;u cầu Qu&yacute; kh&aacute;ch h&agrave;ng nhận h&agrave;ng tại địa điểm của b&aacute;n h&agrave;ng của c&ocirc;ng ty.<br />\r\n- Nếu địa chỉ giao h&agrave;ng kh&ocirc;ng r&otilde; r&agrave;ng, nằm trong ng&otilde; ng&aacute;ch, hoặc ở những nơi nguy hiểm, những v&ugrave;ng đồi n&uacute;i hiểm trở, phương tiện giao th&ocirc;ng đi lại kh&oacute; khăn, ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối vận chuyển, giao nhận h&agrave;ng trực tiếp.<br />\r\n- Trong c&aacute;c trường hợp bất khả kh&aacute;ng, do thi&ecirc;n tai, lũ lụt, hỏng h&oacute;c cầu ph&agrave; &hellip;, ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu tr&aacute;ch nhiệm bồi thường thiệt hại ph&aacute;t sinh do giao h&agrave;ng kh&ocirc;ng đ&uacute;ng thời gian hoặc kh&ocirc;ng vận chuyển h&agrave;ng h&oacute;a đến địa điểm như đ&atilde; thỏa thuận với kh&aacute;ch h&agrave;ng.<br />\r\n- Trường hợp ch&uacute;ng t&ocirc;i đ&atilde; vận chuyển h&agrave;ng đến địa điểm giao nhận như thỏa thuận l&uacute;c mua h&agrave;ng, nhưng v&igrave; một l&yacute; do n&agrave;o đ&oacute; kh&aacute;ch h&agrave;ng y&ecirc;u cầu trả lại h&agrave;ng th&igrave; l&uacute;c đ&oacute; kh&aacute;ch h&agrave;ng phải chịu chi ph&iacute; vận chuyển theo quy định của c&ocirc;ng ty.<br />\r\n- Đối với những sản phẩm nặng v&agrave; cồng kềnh cần vận chuyển l&ecirc;n tầng m&agrave; kh&ocirc;ng c&oacute; thang m&aacute;y đề nghị kh&aacute;ch h&agrave;ng hỗ trợ trong việc giao nhận.<br />\r\n- Trong những ng&agrave;y đặc biệt hoặc c&aacute;c ng&agrave;y Lễ hội do ch&iacute;nh s&aacute;ch giao th&ocirc;ng chung bị hạn chế (cấm đường đối với một số phương tiện&hellip;) thời gian giao h&agrave;ng c&oacute; thể sẽ thay đổi, Ch&uacute;ng t&ocirc;i sẽ gọi điện cho kh&aacute;ch h&agrave;ng để thống nhất thời gian giao nhận.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial\"><img alt=\"Phuong thuc van chuyen SPRO\" height=\"247\" src=\"http://spro.vn/image/catalog/bt_products/phuong-thuc-thanh-toan.jpg\" width=\"300\" /></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333333\"><span style=\"background-color:#ffffff\"><em><span style=\"font-family:Arial\"><strong>SPRO.VN</strong>&nbsp;- Giao h&agrave;ng tận nơi, đ&uacute;ng h&agrave;ng đ&uacute;ng người</span></em></span></span></span></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-van-chuyen', 'Chính sách vận chuyển', '', ''),
(74, 54, 'en', 'page test 9', '', '', '', '', '', '', '', 0, 'page-test-9', 'page test 9', '', ''),
(75, 55, 'vn', 'Hướng dẫn mua hàng', '', '', '', '', '', '', '', 0, 'huong-dan-mua-hang', 'Hướng dẫn mua hàng', '', ''),
(76, 55, 'en', 'page test 10', '', '', '', '', '', '', '', 0, 'page-test-10', 'page test 10', '', ''),
(77, 56, 'vn', 'Phương thức thanh toán', '', '<h3>Phương thức thanh to&aacute;n</h3>\r\n\r\n<p>C&Aacute;C TH&Ocirc;NG TIN CẦN BIẾT KHI THANH TO&Aacute;N</p>\r\n\r\n<h2 style=\"text-align:center\"><u><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO\" height=\"186\" src=\"http://spro.vn/image/catalog/bt_products/payment-options-banner.png\" title=\"phương thức thanh toan, phuong thuc thanh toan, thanh toán tiền hàng, thanh toan tien hang\" width=\"500\" /></a></u><br />\r\n&nbsp;</h2>\r\n\r\n<p>1. Thanh to&aacute;n COD: Nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt<br />\r\n<em>Khi qu&yacute; kh&aacute;ch y&ecirc;u cầu h&igrave;nh thức thanh to&aacute;n COD tức nhận h&agrave;ng v&agrave; thanh to&aacute;n tiền mặt,&nbsp;Qu&yacute; kh&aacute;ch vui l&ograve;ng lưu &yacute; những quy định sau:</em><br />\r\n- Đối với c&aacute;c sản phẩm được giao h&agrave;ng bởi nh&acirc;n vi&ecirc;n c&ocirc;ng ty, Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n đầy đủ sau khi nh&acirc;n vi&ecirc;n đ&atilde; giao h&agrave;ng cho Qu&yacute; kh&aacute;ch. Nếu cần hỗ trợ hướng dẫn sử dụng, hoặc kiểm tra m&aacute;y m&oacute;c, thiết bị ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ ngay tại chỗ.<br />\r\n- Đối với h&agrave;ng h&oacute;a được gởi theo đường bưu điện hoặc dịch vụ chuyển ph&aacute;t nhanh. Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n trước cho nh&acirc;n vi&ecirc;n giao h&agrave;ng rồi mới b&oacute;c mở h&agrave;ng h&oacute;a (Đ&acirc;y l&agrave; quy định bắt buộc của đơn vị vận chuyển). Sau khi b&oacute;c mở h&agrave;ng h&oacute;a, nếu&nbsp;Qu&yacute; kh&aacute;ch cần th&ecirc;m hỗ trợ g&igrave;, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với c&ocirc;ng ty ch&uacute;ng t&ocirc;i.<br />\r\n<br />\r\n2. Thanh to&aacute;n qua nh&agrave; xe, đơn vị chuyển ph&aacute;t<br />\r\n<em>Đối với c&aacute;c tỉnh ở xa khu vực th&agrave;nh phố Hồ Ch&iacute; Minh hay H&agrave; Nội. Ch&uacute;ng t&ocirc;i thường lựa chọn phương&nbsp;thức vận chuyển bằng xe kh&aacute;ch hoặc ch&agrave;nh xe vận chuyển. Điều n&agrave;y l&agrave;m giảm chi ph&iacute; vận chuyển đ&aacute;ng kể cho kh&aacute;ch h&agrave;ng. V&igrave; những sản phẩm c&oacute; k&iacute;ch thước hoặc trọng lượng lớn gần như kh&ocirc;ng thể gởi bưu điện hoặc c&oacute; gởi cước ph&iacute; sẽ rất cao. Do đ&oacute; Qu&yacute; kh&aacute;ch lưu &yacute; một số vấn đề sau đ&acirc;y:</em><br />\r\n- C&ocirc;ng ty sẽ &aacute;p dụng ch&iacute;nh s&aacute;ch nh&agrave; xe thu tiền hộ c&ocirc;ng ty. Do đ&oacute; nếu được y&ecirc;u cầu thu hộ, Qu&yacute; kh&aacute;ch vui l&ograve;ng chuẩn bị tiền thanh to&aacute;n trực tiếp cho nh&agrave; xe hoặc đơn vị vận chuyển do&nbsp;c&ocirc;ng ty y&ecirc;u cầu.<br />\r\n- Đối với c&aacute;c sản phẩm c&oacute; trọng lượng lớn v&agrave; kỹ thuật sử dụng phức tạp, Qu&yacute; kh&aacute;ch c&oacute; thể y&ecirc;u cầu nh&acirc;n vi&ecirc;n c&ocirc;ng ty đến tận nh&agrave; lắp đặt. V&agrave; sẽ thanh to&aacute;n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng hoặc nh&acirc;n vi&ecirc;n lắp đặt t&ugrave;y theo th&ocirc;ng b&aacute;o của c&ocirc;ng ty.<br />\r\n<br />\r\n3.&nbsp;Thanh to&aacute;n tại c&ocirc;ng ty<br />\r\nQu&yacute; kh&aacute;ch mua h&agrave;ng c&oacute; thể đến địa chỉ c&ocirc;ng ty để xem h&agrave;ng v&agrave; mua h&agrave;ng:</p>\r\n\r\n<p><em>167 - 169 B&igrave;nh Lợi (Nơ Trang Long nối d&agrave;i), P. 13, Quận B&igrave;nh Thạnh, Tp. Hồ Ch&iacute; Minh .</em></p>\r\n\r\n<p><br />\r\n4. Thanh to&aacute;n c&ocirc;ng nợ<br />\r\nĐối với c&aacute;c c&ocirc;ng ty đề nghị thanh to&aacute;n c&ocirc;ng nợ, hai b&ecirc;n cần x&aacute;c nhận đơn đặt h&agrave;ng v&agrave; thời gian c&ocirc;ng nợ hoặc gởi PO đặt h&agrave;ng qua Email:&nbsp;Hotrospro@gmail.com. C&ocirc;ng ty sẽ xem x&eacute;t c&aacute;c trường hợp cụ thể v&agrave; th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng về việc c&oacute; chấp nhận&nbsp;c&ocirc;ng nợ hay kh&ocirc;ng.<br />\r\nLi&ecirc;n hệ trực tiếp qua số điện thoại:&nbsp;0283 5 534 298 hoặc&nbsp;0986 954 423&nbsp;<br />\r\n<br />\r\n5. Thanh to&aacute;n Chuyển khoản</p>\r\n\r\n<p style=\"text-align:center\"><a href=\"http://spro.vn/thong-tin-thanh-toan.html\"><img alt=\"Phuong thuc thanh toan SPRO \" height=\"313\" src=\"http://spro.vn/image/catalog/bt_products/computer-keyboard-and-credit-card.jpg\" title=\"phương thức thanh toán\" width=\"500\" /></a><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Qu&yacute; Kh&aacute;ch vui l&ograve;ng chuyển tiền&nbsp;v&agrave;o một&nbsp;trong c&aacute;c&nbsp;t&agrave;i khoản sau:</strong></p>\r\n\r\n<ul>\r\n	<li>Chủ t&agrave;i khoản: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 060059386363<br />\r\n	-&nbsp;<strong>Tại NH Sacombank</strong>&nbsp;- PGD Phan Đăng Lưu - Chi nh&aacute;nh 8/3<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: CT TNHH C&ocirc;ng Nghiệp v&agrave; TM Nam Việt<br />\r\n	- Số TK: 0531002529891<br />\r\n	-&nbsp;<strong>Tại NH Vietcombank&nbsp;</strong>- Chi nh&aacute;nh Đ&ocirc;ng S&agrave;i G&ograve;n<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 19026579068019<br />\r\n	-&nbsp;<strong>Tại NH Techcombank</strong>&nbsp;- Chi nh&aacute;nh Nguyễn Th&aacute;i Sơn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 100414851047518<br />\r\n	-&nbsp;<strong>Tại NH Eximbank</strong>&nbsp;- Chi nh&aacute;nh Chợ Lớn<br />\r\n	&nbsp;</li>\r\n	<li>Chủ TK: C&ocirc;ng ty TNHH C&ocirc;ng Nghiệp v&agrave; Thương Mại Nam Việt<br />\r\n	- Số TK: 172704070003087<br />\r\n	-&nbsp;<strong>Tại NH HD Bank</strong>&nbsp;- Chi nh&aacute;nh Gia Định<br />\r\n	&nbsp;</li>\r\n	<li>TK c&aacute; nh&acirc;n kế to&aacute;n trưởng. Chủ TK: Phạm Thị&nbsp;Tuyết<br />\r\n	- Số TK: 108004183511<br />\r\n	-&nbsp;<strong>Tại NH Vietinbank</strong>&nbsp;- Chi nh&aacute;nh Vũng T&agrave;u.</li>\r\n</ul>\r\n\r\n<p>Hiện nay, c&ocirc;ng ty ch&uacute;ng t&ocirc;i kh&ocirc;ng &aacute;p dụng h&igrave;nh thức mua h&agrave;ng trả g&oacute;p. Khi mua h&agrave;ng nếu Qu&yacute; kh&aacute;ch c&oacute; thắc mắc về vấn đề thanh to&aacute;n, xin vui l&ograve;ng xem qua c&aacute;c th&ocirc;ng tin ph&iacute;a dưới.</p>\r\n\r\n<p>Sau khi đ&atilde; chuyển tiền, Qu&yacute; kh&aacute;ch vui l&ograve;ng th&ocirc;ng b&aacute;o ngay để c&ocirc;ng ty ch&uacute;ng t&ocirc;i tiện theo d&otilde;i,&nbsp;ghi nhận v&agrave; chuyển h&agrave;ng ngay cho Qu&yacute; kh&aacute;ch.&nbsp;</p>\r\n\r\n<p>--------------------------------------------------------------------</p>\r\n\r\n<p style=\"text-align:center\">Rất cảm ơn sự ủng hộ của Qu&yacute; kh&aacute;ch!</p>\r\n', '', '', '', '', '', 1, 'phuong-thuc-thanh-toan', 'Phương thức thanh toán', '', ''),
(78, 56, 'en', 'page test 11', '', '<p>2</p>\r\n', '', '', '', '', '', 1, 'page-test-11', 'page test 11', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `price`
--

INSERT INTO `price` (`id`, `price`, `total`) VALUES
(1, 130, 130),
(2, 120, 720),
(3, 100, 1200);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `alias` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des` text COLLATE utf8_unicode_ci,
  `product_des2` text COLLATE utf8_unicode_ci,
  `product_des3` text COLLATE utf8_unicode_ci,
  `product_content` text COLLATE utf8_unicode_ci,
  `product_content2` text COLLATE utf8_unicode_ci,
  `product_content3` text COLLATE utf8_unicode_ci,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci,
  `product_sub_img` text COLLATE utf8_unicode_ci,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT '0',
  `product_new` int(11) DEFAULT '0',
  `product_sale` int(11) DEFAULT '0',
  `product_code` text COLLATE utf8_unicode_ci,
  `product_original` text COLLATE utf8_unicode_ci,
  `product_size` text COLLATE utf8_unicode_ci,
  `product_package` text COLLATE utf8_unicode_ci,
  `product_delivery` text COLLATE utf8_unicode_ci,
  `product_delivery_time` text COLLATE utf8_unicode_ci,
  `product_payment` text COLLATE utf8_unicode_ci,
  `product_payment_type` text COLLATE utf8_unicode_ci,
  `product_sub_info1` text COLLATE utf8_unicode_ci,
  `product_sub_info2` text COLLATE utf8_unicode_ci,
  `product_sub_info3` text COLLATE utf8_unicode_ci,
  `product_sub_info4` text COLLATE utf8_unicode_ci,
  `product_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci,
  `productcat_ar` text COLLATE utf8_unicode_ci,
  `producttag_arr` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_date` date DEFAULT NULL,
  `kich_co_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `alias`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `producttag_arr`, `product_date`, `kich_co_id`) VALUES
(138, 'Banner Illu', '', '', '', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', 0, 0, 0, '2-600x400.png', '[]', '2020-03-06 11:03:07', '2020-03-25 01:03:17', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Banner Illu', '', 'banner-illu', '', 1, '', '', '', NULL, NULL, '249,249', '', '2020-03-25', 0),
(139, 'banner2', '', '', '', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', 0, 0, 0, 'Lan-bien-dao-khi-2.jpg', '[]', '2020-03-06 11:03:35', '2020-03-25 11:03:24', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner2', '', 'banner2', '', 1, '', '', '', NULL, NULL, '249,249', '', '2020-03-25', 0),
(140, 'banner3', '', '', '', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', 0, 0, 0, '1559096635VcFGTwkbXwVGZgy.jpg', '[]', '2020-03-06 11:03:54', '2020-03-25 08:03:29', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner3', '', 'banner3', '', 1, '', '', '', NULL, NULL, '249,249', '', '2020-03-24', 0),
(141, 'banner4', '', '', '', '', '', '', '', 0, 0, 0, '1562663273OyCyS9raIe4XXr1.jpg', '[]', '2020-03-06 11:03:07', '2020-03-09 14:03:25', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner4', '', 'banner4', '', 1, '', '', '', NULL, NULL, '249,249', '', NULL, 0),
(142, 'banner5', '', '', '', '', '', '', '', 0, 0, 0, '1905245092_SA-Casestudy-Canva-190523.00.jpg', '[]', '2020-03-06 11:03:27', '2020-03-09 14:03:32', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner5', '', 'banner5', '', 1, '', '', '', NULL, NULL, '249,249', '', NULL, 0),
(143, 'banner6', '', '', '', '', '', '', '', 0, 0, 0, 'banner.jpg', '[]', '2020-03-06 11:03:55', '2020-03-09 14:03:39', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner6', '', 'banner6', '', 1, '', '', '', NULL, NULL, '249,249', '', NULL, 0),
(144, 'banner7', '', '', '', '', '', '', '', 0, 0, 0, 'EG7A5609.jpg', '[]', '2020-03-06 11:03:11', '2020-03-09 14:03:57', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner7', '', 'banner7', '', 1, '', '', '', NULL, NULL, '249,249', '', NULL, 0),
(145, 'banner8', '', '', '', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', 0, 0, 0, 'FeatherFlag2018Hero-4426.png', '[]', '2020-03-06 11:03:31', '2020-03-25 08:03:03', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner8', '', 'banner8', '', 1, '', '', '', NULL, NULL, '249,249', '', '2020-03-25', 0),
(146, 'banner9', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', 'http://avy.cafelinkcustomer.info/images/2-600x400.png', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', 0, 0, 0, 'nguoc-lai-banner-thuong-de-cao-hanh-dong-va-thiet-ke-khac-biet.jpg', '[]', '2020-03-06 11:03:44', '2020-03-25 02:03:55', 0, 1, 1, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner9', '', 'banner9', '', 1, '', '', '', NULL, NULL, '249,249', '', '2020-03-09', 0),
(147, 'banner10', '', '', '', '', '', '', '', 0, 0, 0, 'yardsigns.jpg', '[]', '2020-03-06 14:03:04', '2020-03-11 14:03:27', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner10', '', 'banner10', '', 1, '', '', '', NULL, NULL, '249,249', '', '2020-03-09', 2),
(150, 'Poster1', '', '', '', '', '', '', '', 0, 0, 0, '4c806fcae99504986fc4b952b8027236.jpg', '[]', '2020-03-13 18:03:13', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Poster1', '', 'poster1', '', 1, '', '', '', NULL, NULL, '247,247', '', '2020-03-13', 0),
(151, 'Poster2', '', '', '', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', 0, 0, 0, '71120771631182220747990387285275618836480n-15698554976812076051192.jpg', '[]', '2020-03-13 18:03:26', '2020-03-25 02:03:38', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Poster2', '', 'poster2', '', 1, '', '', '', NULL, NULL, '247,247', '', '2020-03-13', 0),
(152, 'Poster3', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', 0, 0, 0, 'Game-Anime-Undertale-Sans-Papyrus-T-ng-Scroll-Trang-Tr-N-i-Th-t-Poster-Sinh.jpg_640x640q70.jpg', '[]', '2020-03-13 18:03:40', '2020-03-25 02:03:04', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Poster3', '', 'poster3', '', 1, '', '', '', NULL, NULL, '247,247', '', '2020-03-13', 0),
(153, 'Poster4', '', '', '', '', '', '', '', 0, 0, 0, 'i_1.jpg', '[]', '2020-03-13 18:03:54', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Poster4', '', 'poster4', '', 1, '', '', '', NULL, NULL, '247,247', '', '2020-03-13', 0),
(154, 'Poster5', '', '', '', '', '', '', '', 0, 0, 0, 'i_11.jpg', '[]', '2020-03-13 18:03:07', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Poster5', '', 'poster5', '', 1, '', '', '', NULL, NULL, '247,247', '', '2020-03-13', 0),
(155, 'Poster6', '', '', '', '', '', '', '', 0, 0, 0, 'i_12.jpg', '[]', '2020-03-13 18:03:20', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Poster6', '', 'poster6', '', 1, '', '', '', NULL, NULL, '247,247', '', '2020-03-13', 0),
(156, 'Poster7', '', '', '', '', '', '', '', 0, 0, 0, 'infographic-with-details-about-coronavirus-with-illustrated-sick-man_23-2148438094.jpg', '[]', '2020-03-13 18:03:35', '2020-03-13 18:03:49', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Poster7', '', 'poster7', '', 1, '', '', '', NULL, NULL, '247,247', '', '2020-03-13', 0),
(157, 'Poster8', '', '', '', '', '', '', '', 0, 0, 0, 'phan-mem-thiet-ke-poster-online.jpg', '[]', '2020-03-13 18:03:06', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Poster8', '', 'poster8', '', 1, '', '', '', NULL, NULL, '247,247', '', '2020-03-13', 0),
(158, 'Poster9', '', '', '', '', '', '', '', 0, 0, 0, 'Poster_phim_Tên_bạn_là_gì.jpg', '[]', '2020-03-13 18:03:22', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Poster9', '', 'poster9', '', 1, '', '', '', NULL, NULL, '247,247', '', '2020-03-13', 0),
(159, 'Poster10', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '', '', '', 0, 0, 0, 'poster-phim-thuong-lam-co-kich-thuoc-40-x-60-va-thuong-duoc-lam-duoi-dang-hop-den.jpg', '[]', '2020-03-13 18:03:37', '2020-03-25 02:03:27', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Poster10', '', 'poster10', '', 1, '', '', '', NULL, NULL, '247,247', '', '2020-03-13', 0),
(160, 'facebook1', '', '', '', '', '', '', '', 0, 0, 0, 'i_1.jpg', '[]', '2020-03-13 18:03:17', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'facebook1', '', 'facebook1', '', 1, '', '', '', NULL, NULL, '246,246', '', '2020-03-13', 0),
(161, 'facebook2', '', '', '', '', '', '', '', 0, 0, 0, 'i_2.jpg', '[]', '2020-03-13 18:03:30', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'facebook2', '', 'facebook2', '', 1, '', '', '', NULL, NULL, '246,246', '', '2020-03-13', 0),
(162, 'facebook3', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '', '', '', 0, 0, 0, 'i_3.jpg', '[]', '2020-03-13 18:03:46', '2020-03-25 02:03:38', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'facebook3', '', 'facebook3', '', 1, '', '', '', NULL, NULL, '246,246', '', '2020-03-13', 0),
(163, 'facebook4', '', '', '', '', '', '', '', 0, 0, 0, 'i_4.jpg', '[]', '2020-03-13 18:03:59', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'facebook4', '', 'facebook4', '', 1, '', '', '', NULL, NULL, '246,246', '', '2020-03-13', 0),
(164, 'facebook5', '', '', '', '', '', '', '', 0, 0, 0, 'i_5.jpg', '[]', '2020-03-13 18:03:14', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'facebook5', '', 'facebook5', '', 1, '', '', '', NULL, NULL, '246,246', '', '2020-03-13', 0),
(165, 'facebook7', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', 0, 0, 0, 'i_7.jpg', '[]', '2020-03-13 18:03:29', '2020-03-25 02:03:14', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'facebook7', '', 'facebook7', '', 1, '', '', '', NULL, NULL, '246,246', '', '2020-03-13', 0),
(166, 'facebook8', '', '', '', '', '', '', '', 0, 0, 0, 'i_8.jpg', '[]', '2020-03-13 18:03:43', NULL, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'facebook8', '', 'facebook8', '', 1, '', '', '', NULL, NULL, '246,246', '', '2020-03-13', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci,
  `productcat_des` text COLLATE utf8_unicode_ci,
  `productcat_content` text COLLATE utf8_unicode_ci,
  `productcat_parent` int(11) NOT NULL DEFAULT '0',
  `productcat_sort_order` int(11) NOT NULL DEFAULT '0',
  `productcat_img` text COLLATE utf8_unicode_ci,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(227, 'Photo', '', '', 0, 0, 'vegetable.png', '2020-03-14 10:03:56', NULL, '', '', '', '', '', 1, 'Photo', '', 'photo', '', 1),
(228, 'E-commerce', '', '', 0, 0, 'fruit_food-512.png', '2020-03-14 10:03:29', NULL, '', '', '', '', '', 1, 'E-commerce', '', 'e-commerce', '', 1),
(229, 'Decors & 3D Models', '', '', 0, 0, 'white_rice.png', '2020-03-14 10:03:11', NULL, '', '', '', '', '', 1, 'Decors & 3D Models', '', 'decors-3d-models', '', 1),
(230, 'Music', '', '', 0, 0, 'milk-512.png', '2020-03-14 10:03:47', NULL, '', '', '', '', '', 1, 'Music', '', 'music', '', 1),
(231, 'Sound Effects', '', '', 0, 0, '227345.png', '2020-03-14 10:03:31', NULL, '', '', '', '', '', 1, 'Sound Effects', '', 'sound-effects', '', 1),
(232, 'Video', '', '', 0, 0, 'meat.png', '2020-03-14 10:03:13', NULL, '', '', '', '', '', 1, 'Video', '', 'video', '', 1),
(236, 'Excel', '', '', 0, 0, NULL, '2020-03-14 10:03:03', NULL, '', '', '', '', '', 1, 'Excel', '', 'excel', '', 1),
(242, 'Word', '', '', 0, 0, NULL, '2020-03-14 10:03:45', NULL, '', '', '', '', '', 1, 'Word', '', 'word', '', 1),
(245, 'PowerPoint', '', '', 0, 0, NULL, '2020-03-14 10:03:28', NULL, '', '', '', '', '', 1, 'PowerPoint', '', 'powerpoint', '', 1),
(246, 'Backgrounds', '', '', 0, 0, NULL, '2020-03-14 10:03:37', NULL, '', '', '', '', '', 1, 'Backgrounds', '', 'backgrounds', '', 1),
(247, 'Graphic Rlements', '', '', 0, 0, NULL, '2020-03-14 10:03:16', NULL, '', '', '', '', '', 1, 'Graphic Rlements', '', 'graphic-rlements', '', 1),
(249, 'Templates', '', '', 0, 0, NULL, '2020-03-14 10:03:55', NULL, '', '', '', '', '', 1, 'Templates', '', 'templates', '', 1),
(250, 'IIIustration', '', '', 0, 0, '', '2020-03-14 10:03:10', NULL, '', '', '', '', '', 1, 'IIIustration', '', 'iiiustration', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci,
  `lang_productcat_content` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(439, 227, 'Photo', 'vn', '', '', '', '', '', '', '', 1, 'photo', '', 'Photo', ''),
(440, 227, 'Organic Vegetables', 'en', 'english version ', 'english version ', '', '', '', '', '', 1, 'en-rau-huu-co', '', 'Rau hữu cơ', ''),
(441, 228, 'E-commerce', 'vn', '', '', '', '', '', '', '', 1, 'e-commerce', '', 'E-commerce', ''),
(442, 228, 'Organic Fruit', 'en', 'english version ', 'english version ', '', '', '', '', '', 1, 'en-trai-cay-huu-co', '', 'Trái cây hữu cơ', ''),
(443, 229, 'Decors & 3D Models', 'vn', '', '', '', '', '', '', '', 1, 'decors-3d-models', '', 'Decors & 3D Models', ''),
(444, 229, 'Organic Rice', 'en', 'english version ', 'english version ', '', '', '', '', '', 1, 'en-gao-huu-co', '', 'Gạo hữu cơ', ''),
(445, 230, 'Music', 'vn', '', '', '', '', '', '', '', 1, 'music', '', 'Music', ''),
(446, 230, 'Organic Milk', 'en', 'english version ', 'english version ', '', '', '', '', '', 1, 'en-sua-huu-co', '', ' Sữa hữu cơ', ''),
(447, 231, 'Sound Effects', 'vn', '', '', '', '', '', '', '', 1, 'sound-effects', '', 'Sound Effects', ''),
(448, 231, 'Fruits Origanic', 'en', 'english version ', 'english version ', '', '', '', '', '', 1, 'en-do-uong', '', 'Đồ uống', ''),
(449, 232, 'Video', 'vn', '', '', '', '', '', '', '', 1, 'video', '', 'Video', ''),
(450, 232, 'Organic Fish - Meat', 'en', 'english version ', 'english version ', '', '', '', '', '', 1, 'en-thit-ca-huu-co', '', 'Thịt cá hữu cơ', ''),
(457, 236, 'Excel', 'vn', '', '', '', '', '', '', '', 0, 'excel', '', 'Excel', ''),
(458, 236, 'english version Air Vent', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-air-vent', '', 'Air Vent', ''),
(469, 242, 'Word', 'vn', '', '', '', '', '', '', '', 0, 'word', '', 'Word', ''),
(470, 242, 'english version Sáp nước hoa Organic', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-sap-nuoc-hoa-organic', '', 'Sáp nước hoa Organic', ''),
(475, 245, 'PowerPoint', 'vn', '', '', '', '', '', '', '', 0, 'powerpoint', '', 'PowerPoint', ''),
(476, 245, 'english version Sáp nước hoa Prestige Organic', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-sap-nuoc-hoa-prestige-organic', '', 'Sáp nước hoa Prestige Organic', ''),
(477, 246, 'Backgrounds', 'vn', '', '', '', '', '', '', '', 0, 'backgrounds', '', 'Backgrounds', ''),
(478, 246, 'english version Get Inspired', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-get-inspired', '', 'Get Inspired', ''),
(479, 247, 'Graphic Rlements', 'vn', '', '', '', '', '', '', '', 0, 'graphic-rlements', '', 'Graphic Rlements', ''),
(480, 247, 'english version Leaf', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-leaf', '', 'Leaf', ''),
(483, 249, 'Templates', 'vn', '', '', '', '', '', '', '', 0, 'templates', '', 'Templates', ''),
(484, 249, 'english version Clips', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-clips', '', 'Clips', ''),
(485, 250, 'IIIustration', 'vn', '', '', '', '', '', '', '', 0, 'iiiustration', '', 'IIIustration', ''),
(486, 250, 'english version IIIustration', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-iiiustration', '', 'IIIustration', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag`
--

CREATE TABLE `producttag` (
  `producttag_id` int(11) NOT NULL,
  `producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sort_order` int(11) NOT NULL,
  `producttag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_created_date` datetime NOT NULL,
  `producttag_update_date` datetime NOT NULL,
  `producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag`
--

INSERT INTO `producttag` (`producttag_id`, `producttag_name`, `producttag_des`, `producttag_content`, `producttag_sort_order`, `producttag_img`, `producttag_created_date`, `producttag_update_date`, `producttag_sub_info1`, `producttag_sub_info2`, `producttag_sub_info3`, `producttag_sub_info4`, `producttag_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(5, 'đỏ', '<p>des</p>\r\n', '<p>content1</p>\r\n', 0, '', '2017-12-12 19:12:53', '2017-12-13 12:12:30', '', '', '', '', '', 1, 'đỏ', 'a1', 'do', 'a1', 1),
(7, 'Xanh', '', '', 0, '', '2017-12-13 12:12:49', '2017-12-13 12:12:49', '', '', '', '', '', 1, 'Xanh', '', 'xanh', '', 1),
(8, 'Vàng', '', '', 0, '', '2017-12-13 12:12:04', '2017-12-13 17:12:26', '', '', '', '', '', 1, 'Vàng', '', 'vang', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag_languages`
--

CREATE TABLE `producttag_languages` (
  `id` int(11) NOT NULL,
  `producttag_id` int(11) NOT NULL,
  `lang_producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `languages_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag_languages`
--

INSERT INTO `producttag_languages` (`id`, `producttag_id`, `lang_producttag_name`, `languages_code`, `lang_producttag_des`, `lang_producttag_content`, `lang_producttag_sub_info1`, `lang_producttag_sub_info2`, `lang_producttag_sub_info3`, `lang_producttag_sub_info4`, `lang_producttag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(2, 5, 'đỏ', 'vn', '<p>des</p>\r\n', '<p>content1</p>\r\n', '', '', '', '', '', 1, 'do', 'a1', 'đỏ', 'a1'),
(3, 5, 'tag produnt', 'en', '<p>des</p>\r\n', '<p>content</p>\r\n', '', '', '', '', '', 1, 'tag-produnt', 'a', 'tag produnt', 'a'),
(6, 7, 'Xanh', 'vn', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(7, 7, 'Xanh', 'en', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(8, 8, 'Vàng', 'vn', '<p>1</p>\r\n', '<p>1</p>\r\n', '', '', '', '', '', 1, 'vang', '', 'Vàng', ''),
(9, 8, 'yellow', 'en', '', '', '', '', '', '', '', 1, 'vang', '', 'Vàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci,
  `lang_product_des` text COLLATE utf8_unicode_ci,
  `lang_product_des2` text COLLATE utf8_unicode_ci,
  `lang_product_des3` text COLLATE utf8_unicode_ci,
  `lang_product_content` text COLLATE utf8_unicode_ci,
  `lang_product_content2` text COLLATE utf8_unicode_ci,
  `lang_product_content3` text COLLATE utf8_unicode_ci,
  `lang_product_code` text COLLATE utf8_unicode_ci,
  `lang_product_original` text COLLATE utf8_unicode_ci,
  `lang_product_size` text COLLATE utf8_unicode_ci,
  `lang_product_package` text COLLATE utf8_unicode_ci,
  `lang_product_delivery` text COLLATE utf8_unicode_ci,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci,
  `lang_product_payment` text COLLATE utf8_unicode_ci,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(263, 138, 'vn', 'Banner Illu', '', '', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner-illu', 'Banner Illu', '', ''),
(264, 138, 'en', 'english version banner1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-banner1', 'banner1', '', ''),
(265, 139, 'vn', 'banner2', '', '', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner2', 'banner2', '', ''),
(266, 139, 'en', 'english version banner2', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-banner2', 'banner2', '', ''),
(267, 140, 'vn', 'banner3', '', '', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner3', 'banner3', '', ''),
(268, 140, 'en', 'english version banner3', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-banner3', 'banner3', '', ''),
(269, 141, 'vn', 'banner4', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner4', 'banner4', '', ''),
(270, 141, 'en', 'english version banner4', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-banner4', 'banner4', '', ''),
(271, 142, 'vn', 'banner5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner5', 'banner5', '', ''),
(272, 142, 'en', 'english version banner5', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-banner5', 'banner5', '', ''),
(273, 143, 'vn', 'banner6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner6', 'banner6', '', ''),
(274, 143, 'en', 'english version banner6', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-banner6', 'banner6', '', ''),
(275, 144, 'vn', 'banner7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner7', 'banner7', '', ''),
(276, 144, 'en', 'english version banner7', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-banner7', 'banner7', '', ''),
(277, 145, 'vn', 'banner8', '', '', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner8', 'banner8', '', ''),
(278, 145, 'en', 'english version banner8', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-banner8', 'banner8', '', ''),
(279, 146, 'vn', 'banner9', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', 'http://avy.cafelinkcustomer.info/images/2-600x400.png', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner9', 'banner9', '', ''),
(280, 146, 'en', 'english version banner9', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-banner9', 'banner9', '', ''),
(281, 147, 'vn', 'banner10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'banner10', 'banner10', '', ''),
(282, 147, 'en', 'english version banner10', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-banner10', 'banner10', '', ''),
(287, 150, 'vn', 'Poster1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'poster1', 'Poster1', '', ''),
(288, 150, 'en', 'english version Poster1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-poster1', 'Poster1', '', ''),
(289, 151, 'vn', 'Poster2', '', '', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'poster2', 'Poster2', '', ''),
(290, 151, 'en', 'english version Poster2', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-poster2', 'Poster2', '', ''),
(291, 152, 'vn', 'Poster3', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'poster3', 'Poster3', '', ''),
(292, 152, 'en', 'english version Poster3', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-poster3', 'Poster3', '', ''),
(293, 153, 'vn', 'Poster4', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'poster4', 'Poster4', '', ''),
(294, 153, 'en', 'english version Poster4', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-poster4', 'Poster4', '', ''),
(295, 154, 'vn', 'Poster5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'poster5', 'Poster5', '', ''),
(296, 154, 'en', 'english version Poster5', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-poster5', 'Poster5', '', ''),
(297, 155, 'vn', 'Poster6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'poster6', 'Poster6', '', ''),
(298, 155, 'en', 'english version Poster6', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-poster6', 'Poster6', '', ''),
(299, 156, 'vn', 'Poster7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'poster7', 'Poster7', '', ''),
(300, 156, 'en', 'english version Poster8', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-poster8', 'Poster8', '', ''),
(301, 157, 'vn', 'Poster8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'poster8', 'Poster8', '', ''),
(302, 157, 'en', 'english version Poster8', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-poster8', 'Poster8', '', ''),
(303, 158, 'vn', 'Poster9', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'poster9', 'Poster9', '', ''),
(304, 158, 'en', 'english version Poster9', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-poster9', 'Poster9', '', ''),
(305, 159, 'vn', 'Poster10', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'poster10', 'Poster10', '', ''),
(306, 159, 'en', 'english version Poster10', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-poster10', 'Poster10', '', ''),
(307, 160, 'vn', 'facebook1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'facebook1', 'facebook1', '', ''),
(308, 160, 'en', 'english version facebook1', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-facebook1', 'facebook1', '', ''),
(309, 161, 'vn', 'facebook2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'facebook2', 'facebook2', '', ''),
(310, 161, 'en', 'english version facebook2', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-facebook2', 'facebook2', '', ''),
(311, 162, 'vn', 'facebook3', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'facebook3', 'facebook3', '', ''),
(312, 162, 'en', 'english version facebook3', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-facebook3', 'facebook3', '', ''),
(313, 163, 'vn', 'facebook4', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'facebook4', 'facebook4', '', ''),
(314, 163, 'en', 'english version facebook4', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-facebook4', 'facebook4', '', ''),
(315, 164, 'vn', 'facebook5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'facebook5', 'facebook5', '', ''),
(316, 164, 'en', 'english version facebook5', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-facebook5', 'facebook5', '', ''),
(317, 165, 'vn', 'facebook7', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '<p>Vector in .EPS format<a href=\"https://support.freepik.com/hc/en-us/articles/203578042-How-to-edit-a-vector-file-from-Freepik-\" target=\"_blank\">How to edit?</a></p>\r\n\r\n<p>Freepik License</p>\r\n\r\n<p>Free for personal and commercial purpose with attribution.&nbsp;<a href=\"https://www.freepik.com/standard-license-freepik\">More info</a></p>\r\n\r\n<p>Attribution is required</p>\r\n\r\n<p>&nbsp;<a href=\"https://support.freepik.com/hc/en-us/articles/208976585-Attribution-How-when-and-where-\">How to attribute?</a></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'facebook7', 'facebook7', '', ''),
(318, 165, 'en', 'english version facebook7', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-facebook7', 'facebook7', '', ''),
(319, 166, 'vn', 'facebook8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'facebook8', 'facebook8', '', ''),
(320, 166, 'en', 'english version facebook8', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-facebook8', 'facebook8', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size`
--

CREATE TABLE `product_size` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_size`
--

INSERT INTO `product_size` (`id`, `name`) VALUES
(2, '300x600'),
(3, '400x600');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT '1',
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT '1',
  `regInfor_answer2` int(11) DEFAULT '1',
  `regInfor_answer3` int(11) DEFAULT '1',
  `regInfor_answer4` int(11) DEFAULT '1',
  `regInfor_answer5` int(11) DEFAULT '1',
  `regInfor_answer6` int(11) DEFAULT '1',
  `regInfor_answer7` int(11) DEFAULT '1',
  `regInfor_answer8` int(11) DEFAULT '1',
  `regInfor_answer9` int(11) DEFAULT '1',
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci,
  `sale_code` text COLLATE utf8_unicode_ci,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci,
  `service_content` text COLLATE utf8_unicode_ci,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `servicetag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `servicetag_arr`) VALUES
(57, 'Dịch vụ 3', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Automotive Aftermarket Business Division is responsible for our replacement parts business worldwide and delivers innovative repair solutions in original-equipment quality. With our four brands LuK, INA, FAG, and Ruville, we offer clutch and release systems, engine and transmission applications, as well as chassis applications. All components are optimally tuned to work together and allow for fast and professional replacement.</p>\r\n\r\n<p><img alt=\"\" height=\"563\" src=\"/image/images/Ubuntu_wall_4_by_RPMan_Art.png\" style=\"float:left\" width=\"900\" /></p>\r\n\r\n<p>What&rsquo;s more, our REPXPERT brand focuses on comprehensive services for garages, such as conducting practical-oriented training courses, providing support for repair with our hotline, our online garage portal and developing special tools</p>\r\n', 'sv5.jpg', '354', 4, 'Minh Công', '2017-05-22', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 3', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-3', 'Thi công rèm', NULL, ''),
(58, 'Dịch vụ 2', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', 'sv4.jpg', '354', 3, 'Minh Công', '2017-05-22', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 2', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-2', 'Thi công rèm', NULL, ''),
(59, 'Dịch vụ 1', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', 'sv3.jpg', '354', 3, 'Minh Công', '2017-05-22', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 1', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-1', 'Thi công rèm', NULL, ''),
(60, 'Dịch vụ 4', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', 'sv2.jpg', '354', 4, 'Minh Công', '2017-05-22', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 4', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-4', 'Thi công rèm', NULL, ''),
(61, 'Dịch vụ 5', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis\r\n                            egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget.', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', 'sv1.jpg', '354', 4, 'Minh Công', '2017-05-22', '2018-03-29', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 5', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-5', 'Thi công rèm', NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci,
  `servicecat_content` text COLLATE utf8_unicode_ci,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(3, 'Danh mục dịch vụ 1', '<p>M&ocirc; tả Danh mục dịch vụ 1</p>\r\n', '', 0, 0, '2017-12-03', NULL, 1, 'sv2.jpg', NULL, NULL, NULL, NULL, NULL, 'Danh mục dịch vụ 1', '', 'danh-muc-dich-vu-1', '', 1),
(4, 'Danh mục dịch vụ 2', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', '', 0, 0, '2018-03-29', NULL, 1, 'sv1.jpg', NULL, NULL, NULL, NULL, NULL, 'Danh mục dịch vụ 2', '', 'danh-muc-dich-vu-2', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci,
  `state` int(11) DEFAULT '1',
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(5, 'Danh mục dịch vụ 1', '<p>M&ocirc; tả Danh mục dịch vụ 1</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Danh mục dịch vụ 1', '', 'danh-muc-dich-vu-1', '', NULL, 'vn', 3),
(6, 'Dịch vụ', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ', '', 'dich-vu', '', NULL, 'en', 3),
(7, 'Danh mục dịch vụ 2', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', NULL, 1, '', '', '', '', '', 'Danh mục dịch vụ 2', '', 'danh-muc-dich-vu-2', '', NULL, 'vn', 4),
(8, 'category service 2', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', '1', 1, '', '', '', '', '', 'Danh mục dịch vụ 2', '', 'category-service-2', '', NULL, 'en', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag`
--

CREATE TABLE `servicetag` (
  `servicetag_id` int(11) NOT NULL,
  `servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sort_order` int(11) NOT NULL,
  `servicetag_created_date` datetime NOT NULL,
  `servicetag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `servicetag_img` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag`
--

INSERT INTO `servicetag` (`servicetag_id`, `servicetag_name`, `servicetag_des`, `servicetag_content`, `servicetag_sort_order`, `servicetag_created_date`, `servicetag_update_date`, `state`, `servicetag_img`, `servicetag_sub_info1`, `servicetag_sub_info2`, `servicttag_sub_info3`, `servicetag_sub_info4`, `servicetag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(4, 'hot', '', '', 0, '2017-12-13 15:12:00', '2017-12-13 15:12:00', 1, '', '', '', '', '', '', 'hot', '', 'hot', '', 1),
(5, 'sale', '', '', 0, '2017-12-13 15:12:12', '2017-12-13 15:12:12', 1, '', '', '', '', '', '', 'sale', '', 'sale', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag_languages`
--

CREATE TABLE `servicetag_languages` (
  `id` int(11) NOT NULL,
  `servicetag_id` int(11) NOT NULL,
  `languages_code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag_languages`
--

INSERT INTO `servicetag_languages` (`id`, `servicetag_id`, `languages_code`, `lang_servicetag_name`, `lang_servicetag_des`, `lang_servicetag_content`, `lang_servicetag_sub_info1`, `lang_servicetag_sub_info2`, `lang_servicetag_sub_info3`, `lang_servicetag_sub_info4`, `lang_servicetag_sub_info5`, `title_seo`, `des_seo`, `keyword`, `friendly_url`, `state`) VALUES
(4, 4, 'vn', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(5, 4, 'en', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(6, 5, 'vn', 'sale', '<p>1</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1),
(7, 5, 'en', 'sale', '<p>2</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci,
  `lang_service_content` text COLLATE utf8_unicode_ci,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(69, 'vn', 'Dịch vụ 3', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Automotive Aftermarket Business Division is responsible for our replacement parts business worldwide and delivers innovative repair solutions in original-equipment quality. With our four brands LuK, INA, FAG, and Ruville, we offer clutch and release systems, engine and transmission applications, as well as chassis applications. All components are optimally tuned to work together and allow for fast and professional replacement.</p>\r\n\r\n<p><img alt=\"\" height=\"563\" src=\"/image/images/Ubuntu_wall_4_by_RPMan_Art.png\" style=\"float:left\" width=\"900\" /></p>\r\n\r\n<p>What&rsquo;s more, our REPXPERT brand focuses on comprehensive services for garages, such as conducting practical-oriented training courses, providing support for repair with our hotline, our online garage portal and developing special tools</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 3', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-3', 'Thi công rèm', NULL, 57),
(70, 'en', 'Thi công rèm chung cư Roal City', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm chung cư Roal City', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-roal-city', 'Thi công rèm', NULL, 57),
(71, 'vn', 'Dịch vụ 2', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 2', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-2', 'Thi công rèm', NULL, 58),
(72, 'en', 'Thi công rèm chung cư Vimcom Bà Triệu', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm chung cư Vimcom Bà Triệu', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-vimcom-ba-trieu', 'Thi công rèm', NULL, 58),
(73, 'vn', 'Dịch vụ 1', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Dịch vụ 1', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-1', 'Thi công rèm', NULL, 59),
(74, 'en', 'Thi công rèm khu đô thị Ecopark', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ ÁN</h3>\r\n\r\n<p>Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Thi công rèm khu đô thị Ecopark', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-khu-do-thi-ecopark', 'Thi công rèm', NULL, 59),
(75, 'vn', 'Dịch vụ 4', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ 4', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-4', 'Thi công rèm', NULL, 60),
(76, 'en', 'Thi công rèm khách sạn Thắng Lợi', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm khách sạn Thắng Lợi', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-khach-san-thang-loi', 'Thi công rèm', NULL, 60),
(77, 'vn', 'Dịch vụ 5', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis\r\n                            egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget.', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Dịch vụ 5', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'dich-vu-5', 'Thi công rèm', NULL, 61),
(78, 'en', 'Thi công rèm chung cư Keangnam', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ ÁN</h3>\r\n\r\n<p>Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Thi công rèm chung cư Keangnam', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-keangnam', 'Thi công rèm', NULL, 61);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci,
  `user_password` text COLLATE utf8_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `time` date NOT NULL,
  `ask` text COLLATE utf8_unicode_ci,
  `remember_me_identify` text COLLATE utf8_unicode_ci,
  `remember_me_token` text COLLATE utf8_unicode_ci,
  `now` date DEFAULT NULL,
  `num` int(11) NOT NULL,
  `goi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`, `time`, `ask`, `remember_me_identify`, `remember_me_token`, `now`, `num`, `goi`) VALUES
(1, 'mystery078', 'tung92.ns@gmail.com', '01658824321', '', '$2y$10$zjlyFYq6vJ6TXeQVsOh/1esNuHFTf23SE62fvXVvyUAYvzxyCNzv6', '2017-03-12 02:03:39', 1, '0000-00-00', '', '', '', NULL, 0, 0),
(10, 'hung', 'hung71483@gmail.com', NULL, NULL, '$2y$10$K1pWsDER5UHre0zaC5IYyOZFnYSXYA34OO7M7Yu3wG/LzFaiXaN6O', NULL, 1, '0000-00-00', '$2y$10$agH2TActbd84Z7FltVwgYuuls12k7kwo4nIKTwYTF9NwaoD/B6Z8a', 'Ub9dhdrbOub9AnPESARe', 'zcZMIcNMkrAeVbLqbPIueU4x0JS3Q5', NULL, 0, 0),
(11, 'Việt Hưng', 'viethung95cute@gmail.com', NULL, NULL, '$2y$10$H/oRwht13lj1/tnj.VEIVO58qvIvEIjfTDt4HByWikd/e15e0CD2G', NULL, 1, '0000-00-00', '$2y$10$nEdTTn2WO1lwvkii8gfgpuwf9TRz72.ypUNmDUUGlVJvuR2ZC.idy', '', '', NULL, 0, 0),
(13, 'tuan', 'tuan@gmail.com', NULL, NULL, '$2y$10$3doZQUS28wUR0XJSXUG22uwzvnmwmFKKbqEKaH2xd2.cOYNGZgSqW', NULL, 1, '2020-07-14', NULL, NULL, NULL, '2020-04-14', 2, 2),
(14, 'anh', 'anh@gmail.com', NULL, NULL, '$2y$10$eQs4hf86zxodBkFFA6/eK.EVNh1W2sjvnp/SgxoDUzCAP1AnSNy22', NULL, 1, '2020-03-11', NULL, NULL, NULL, NULL, 0, 0),
(15, 'cf', 'cafelink.org@gmail.com', NULL, NULL, '$2y$10$IaUGW1rjRsgcC0u24zSqK.8FD72B7ASZSOxFqBaU4qQGVvVxbbu0W', NULL, 1, '2021-03-23', NULL, NULL, NULL, NULL, 0, 0),
(16, 'huyen', 'huyennt62@wru.vn', NULL, NULL, '$2y$10$vschEcMcXEBunx3Tukqn/eZHdkaeofeRXRJ4DEkTuWSiXLc1XSu.q', NULL, 1, '2021-03-24', NULL, NULL, NULL, NULL, 0, 0),
(17, 'Văn Dung', 'dungnv200291@gmail.com', NULL, NULL, '$2y$10$q7R4S03Y6/YoMPX9xzV7Wen7mVJTqsn/NHwmQcGDzPtHEZICGbauS', NULL, 1, '2020-03-30', NULL, NULL, NULL, NULL, 0, 0),
(18, 'vy', 'dinhantrieuvy@gmail.com', NULL, NULL, '$2y$10$.ZhCTxJZuLee2fogScYHjuBukB3xInwZT0S8x62.v7G05MXO6o0S6', NULL, 1, '2020-04-05', NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `book_package`
--
ALTER TABLE `book_package`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `newstag`
--
ALTER TABLE `newstag`
  ADD PRIMARY KEY (`newstag_id`);

--
-- Chỉ mục cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `producttag`
--
ALTER TABLE `producttag`
  ADD PRIMARY KEY (`producttag_id`);

--
-- Chỉ mục cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  ADD PRIMARY KEY (`servicetag_id`);

--
-- Chỉ mục cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `book_package`
--
ALTER TABLE `book_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT cho bảng `newstag`
--
ALTER TABLE `newstag`
  MODIFY `newstag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT cho bảng `producttag`
--
ALTER TABLE `producttag`
  MODIFY `producttag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  MODIFY `servicetag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
