-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2018 at 09:56 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lrms2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admixture`
--

CREATE TABLE `admixture` (
  `id_admixture` int(3) UNSIGNED ZEROFILL NOT NULL,
  `id_menu_adm` int(11) DEFAULT NULL,
  `id_stock_adm` int(11) DEFAULT NULL,
  `num_stock` int(11) DEFAULT NULL,
  `id_unit_adm` int(11) DEFAULT NULL,
  `adstatic` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admixture`
--

INSERT INTO `admixture` (`id_admixture`, `id_menu_adm`, `id_stock_adm`, `num_stock`, `id_unit_adm`, `adstatic`) VALUES
(110, 1, 14, 55, 2, 0),
(111, 1, 1, 2, 2, 0),
(112, 1, 12, 123, 2, 0),
(113, 1, 6, 50, 1, 0),
(115, 2, 1, 20, 2, 0),
(116, 2, 6, 200, 4, 0),
(117, 2, 15, 200, 2, 0),
(124, 4, 29, 150, 2, 0),
(125, 7, 28, 2, 1, 0),
(132, 5, 3, 1, 1, 0),
(133, 5, 1, 1, 1, 0),
(134, 5, 4, 1, 1, 0),
(135, 5, 12, 555, 1, 0),
(136, 5, 5, 44, 2, 0),
(137, 6, 1, 22, 4, 0),
(139, 18, 29, 200, 2, 0),
(142, 2, 5, 5, 2, 0),
(144, 18, 7, 1, 1, 0),
(148, 4, 6, 2, 5, 0),
(151, 65, 9, 50, 2, 0),
(152, 1, 9, 50, 2, 0),
(154, 65, 66, 50, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `expenditure`
--

CREATE TABLE `expenditure` (
  `id_expenditure` int(11) NOT NULL,
  `e_namestock` int(11) DEFAULT NULL,
  `e_price` int(11) DEFAULT NULL,
  `e_number` int(11) DEFAULT NULL,
  `e_unit` int(11) DEFAULT NULL,
  `e_date` date DEFAULT NULL,
  `e_time` time NOT NULL DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expenditure`
--

INSERT INTO `expenditure` (`id_expenditure`, `e_namestock`, `e_price`, `e_number`, `e_unit`, `e_date`, `e_time`) VALUES
(17, 7, 150, 1, 1, '2017-12-20', '23:01:52'),
(18, 7, 250, 1, 1, '2017-12-21', '23:02:07'),
(19, 9, 250, 5, 2, '2017-12-22', '00:00:00'),
(20, 17, 50, 5, 2, '2017-12-23', '00:00:00'),
(21, 1, 5, 5, 2, '2017-12-24', '00:00:00'),
(23, 16, 250, 2, 1, '2017-12-26', '00:00:00'),
(24, 29, 500, 3, 1, '2017-12-27', '00:00:00'),
(25, 7, 250, 1, 1, '2017-12-22', '22:26:22'),
(26, 7, 500, 3, 1, '2017-12-25', '22:27:01'),
(27, 7, 500, 65, 1, '2017-12-22', '22:30:26'),
(28, 36, 500, 1, 1, '2017-12-26', '01:55:52'),
(29, 7, 50, 50, 2, '2017-12-26', '02:00:06'),
(30, 7, 50, 50, 2, '2017-12-26', '02:00:17'),
(78, 7, 111, 1, 1, '2017-12-26', '03:07:46'),
(79, 7, 1221, 50, 2, '2017-12-26', '03:07:54'),
(86, 7, 50, 2, 1, '2017-12-26', '10:29:09'),
(87, 7, 500, 3, 1, '2017-12-27', '23:05:48'),
(88, 7, 500, 5, 1, '2017-12-30', '19:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `key_menu` varchar(50) NOT NULL,
  `name_menu` varchar(500) DEFAULT NULL,
  `price_menu` varchar(500) DEFAULT NULL,
  `type_menu` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `key_menu`, `name_menu`, `price_menu`, `type_menu`) VALUES
(1, 'P01', 'กะเพราอกไก่', '25', '1'),
(2, 'P02', 'อกไก่ผัดฟักทอง', '35', '1'),
(4, 'P04', 'ข้าวผัดอกไก่', '30', '1'),
(5, 'W01', 'โจ๊กโอ๊ตอกไก่', '40', '2'),
(6, 'P05', 'ลาบอีสานอกไก่', '40', '1'),
(7, 'P06', 'สปาเก็ตตี้อกไก่', '40', '1'),
(8, 'W02', 'ราดหน้าอกไก่', '30', '2'),
(9, 'W03', 'อกไก่ผัดขิง', '30', '2'),
(10, 'P07', 'คะน้าอกไก่น้ำมันหอย', '30', '1'),
(11, 'B01', 'ขนมปังทูน่า', '20', '5'),
(12, 'B02', 'ขนมปังไข่ไก่', '20', '5'),
(13, 'B03', 'ขนมปังกล้วย', '20', '5'),
(14, 'T01', 'ไข่ดาว', '5', '3'),
(15, 'T02', 'ไข่เจียว', '7', '3'),
(16, 'W04', 'ไข่ต้ม', '5', '2'),
(17, 'N01', 'ปลานิลนึ่งมะนาว', '50', '4'),
(18, 'P08', 'ข้าวผัดกุ้ง', '35', '1'),
(65, 'P09', 'ข้าวมันไก่', '50', '1'),
(66, 'P08', 'ผัดไก่', '50', '1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `order_time` time DEFAULT NULL,
  `total_qty` int(11) NOT NULL DEFAULT '0',
  `total_price` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `order_time`, `total_qty`, `total_price`) VALUES
(1, '2017-12-21', '00:52:41', 1, 35),
(2, '2017-12-22', '02:12:45', 9, 280),
(3, '2017-12-22', '02:13:48', 2, 60),
(4, '2017-12-23', '14:46:03', 9, 270),
(5, '2017-12-23', '17:31:57', 1, 30),
(6, '2017-12-24', '17:32:56', 1, 30),
(7, '2017-12-24', '17:33:19', 1, 30),
(8, '2017-12-25', '17:34:36', 1, 30),
(9, '2017-12-25', '17:39:46', 1, 12),
(10, '2017-12-25', '17:40:03', 1, 12),
(11, '2017-12-25', '17:40:19', 1, 12),
(12, '2017-12-25', '17:40:55', 1, 12),
(13, '2017-12-25', '17:43:12', 1, 12),
(14, '2017-12-25', '17:44:42', 1, 12),
(15, '2017-12-25', '17:45:48', 1, 12),
(16, '2017-12-25', '17:46:57', 1, 12),
(17, '2017-12-25', '17:48:10', 1, 12),
(18, '2017-12-25', '17:49:27', 1, 12),
(19, '2017-12-25', '17:49:49', 1, 12),
(20, '2017-12-25', '17:50:35', 1, 12),
(21, '2017-12-25', '17:50:48', 1, 30),
(22, '2017-12-25', '17:50:56', 1, 12),
(23, '2017-12-25', '17:59:07', 1, 12),
(24, '2017-12-25', '17:59:52', 2, 24),
(25, '2017-12-25', '18:02:30', 1, 12),
(26, '2017-12-25', '18:03:44', 1, 12),
(27, '2017-12-25', '18:05:20', 1, 12),
(28, '2017-12-25', '18:10:11', 1, 12),
(29, '2017-12-25', '18:11:42', 1, 12),
(30, '2017-12-25', '18:12:46', 1, 12),
(31, '2017-12-25', '18:14:10', 1, 12),
(32, '2017-12-25', '18:15:05', 1, 12),
(33, '2017-12-25', '18:21:08', 1, 12),
(34, '2017-12-25', '18:22:24', 2, 42),
(35, '2017-12-25', '18:42:48', 1, 30),
(36, '2017-12-26', '18:43:28', 1, 30),
(37, '2017-12-27', '18:44:37', 1, 30),
(38, '2017-12-25', '18:47:10', 5, 150),
(39, '2017-12-25', '18:48:05', 4, 160),
(40, '2017-12-25', '18:56:21', 1, 15),
(41, '2017-12-25', '19:44:44', 1, 30),
(42, '2017-12-25', '19:45:56', 1, 30),
(43, '2017-12-25', '19:47:33', 1, 30),
(44, '2017-12-25', '19:48:10', 10, 200),
(45, '2017-12-25', '19:49:20', 1, 30),
(46, '2017-12-25', '19:49:50', 6, 180),
(47, '2017-12-25', '19:50:33', 3, 90),
(48, '2017-12-25', '22:07:01', 1, 30),
(49, '2017-12-25', '22:10:46', 2, 60),
(50, '2017-12-26', '10:24:35', 1, 35),
(51, '2017-12-26', '10:26:17', 18, 665),
(52, '2017-12-26', '10:26:49', 2, 70),
(53, '2017-12-26', '10:29:07', 1, 35),
(54, '2017-12-26', '11:16:46', 3, 77),
(55, '2017-12-26', '11:17:27', 1, 35),
(56, '2017-12-28', '00:44:36', 2, 40),
(57, '2017-12-30', '19:42:05', 10, 200);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `orderd_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `qty_menu` varchar(50) NOT NULL DEFAULT '0',
  `total_price_menu` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`orderd_id`, `order_id`, `menu_id`, `qty_menu`, `total_price_menu`) VALUES
(1, 1, 16, '1', '35'),
(3, 2, 1, '7', '210'),
(4, 2, 2, '1', '30'),
(6, 3, 1, '1', '30'),
(7, 3, 2, '1', '30'),
(11, 7, 1, '1', '30'),
(12, 8, 1, '1', '30'),
(25, 21, 1, '1', '30'),
(38, 5, 1, '1', '30'),
(40, 4, 1, '1', '30'),
(41, 36, 1, '1', '30'),
(42, 37, 1, '1', '30'),
(43, 38, 1, '5', '150'),
(46, 41, 9, '1', '30'),
(47, 42, 1, '1', '30'),
(48, 43, 9, '1', '30'),
(49, 44, 13, '10', '200'),
(50, 45, 1, '1', '30'),
(51, 46, 1, '6', '180'),
(52, 47, 1, '3', '90'),
(53, 48, 1, '1', '30'),
(54, 49, 1, '2', '60'),
(55, 50, 18, '1', '35'),
(56, 51, 6, '7', '280'),
(58, 52, 18, '2', '70'),
(59, 53, 18, '1', '35'),
(60, 54, 18, '2', '70'),
(62, 55, 18, '1', '35'),
(63, 56, 11, '2', '40'),
(64, 57, 11, '10', '200');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id_stock` int(11) NOT NULL,
  `name_stock` varchar(500) DEFAULT NULL,
  `amount_stock` double DEFAULT '0',
  `type_stock` varchar(50) DEFAULT '0',
  `type_unit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id_stock`, `name_stock`, `amount_stock`, `type_stock`, `type_unit`) VALUES
(1, 'กระเทียม', 5540, '2', 1),
(2, 'ข้าวโพด', 38256, '2', 1),
(3, 'มะนาว', 8740, '2', 1),
(4, 'ขนมปังโฮตวีท', 8740, '5', 1),
(5, 'มะเขือเทศ', 8740, '2', 1),
(6, 'ซีอิ้วขาว', 5290, '4', 1),
(7, 'ทูน่า', 7000, '1', 1),
(8, 'แครอท', 8740, '2', 1),
(9, 'ปลา', 14484, '1', 1),
(11, 'คะน้า', 1000, '2', 1),
(12, 'พริก', 1267, '2', 1),
(14, 'หัวหอมใหญ่', 2390, '2', 1),
(15, 'ฟักทอง', 7900, '2', 1),
(16, 'ข้าว', 1000, '7', 1),
(17, 'กล้วย', 1000, '3', 1),
(18, 'ไข่ไก่', 1000, '1', 1),
(19, 'หอมแดง', 1000, '2', 1),
(20, 'ขิง', 8460, '2', 1),
(21, 'น้ำปลา', 7280, '4', 2),
(22, 'เส้นใหญ่', 1000, '6', 1),
(23, 'น้ำตาล', 1240, '4', 1),
(24, 'กะเพรา', 4850, '2', 1),
(25, 'เส้นหมี่ข้าวกล้อง', 7040, '6', 1),
(26, 'น้ำมันรำข้าว', 9860, '4', 2),
(27, 'ดอกกล่ำ', 4140, '2', 1),
(28, 'เส้นสปาเก็ตตี้', 1240, '6', 1),
(29, 'ข้าวไรซ์เบอรี่', 7340, '7', 1),
(30, 'พริกไทย', 1000, '4', 1),
(31, 'พริกป่น', 1000, '4', 1),
(32, 'หมู', 1000, '1', 1),
(36, 'กุ้ง', 1000, '1', 1),
(37, 'หมูสับ', 1000, '1', 1),
(66, 'หมูหมัก', 1000, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id_unit` int(11) NOT NULL,
  `name_unit` varchar(50) DEFAULT NULL,
  `type_unit` int(11) DEFAULT NULL,
  `value` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id_unit`, `name_unit`, `type_unit`, `value`) VALUES
(1, 'กิโลกรัม', 1, 1000),
(2, 'กรัม', 2, 1),
(3, 'ลิตร', 3, 1000),
(4, 'มิลลิลิตร', 4, 1),
(5, 'ช้อนชา', 5, 5),
(6, 'ช้อนโต๊ะ', 6, 15),
(7, 'ถ้วย', 7, 240),
(8, 'ทัพพี', 8, 60);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `rest_user` varchar(500) DEFAULT NULL,
  `name_user` varchar(50) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `pass_user` varchar(50) NOT NULL,
  `status_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `rest_user`, `name_user`, `email_user`, `pass_user`, `status_user`) VALUES
(1, 'The8', 'AM', 'yingampjb@hotmail.com', '1', 1),
(2, 'The8', 'Pun', 'Pun@hot', '1', 2),
(3, 'The8', 'Pooh', 'Pooh@hot', '123', 2),
(6, 'The8', 'mimi', 'mimi@gmail.com', '1', 2),
(10, 'The8', 'test2', 'test@qq', '1', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admixture`
--
ALTER TABLE `admixture`
  ADD PRIMARY KEY (`id_admixture`),
  ADD KEY `FK_admixture_menu` (`id_menu_adm`),
  ADD KEY `FK_admixture_stock` (`id_stock_adm`),
  ADD KEY `FK_admixture_unit` (`id_unit_adm`);

--
-- Indexes for table `expenditure`
--
ALTER TABLE `expenditure`
  ADD PRIMARY KEY (`id_expenditure`),
  ADD KEY `FK_expenditure_stock` (`e_namestock`),
  ADD KEY `FK_expenditure_unit` (`e_unit`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`orderd_id`),
  ADD KEY `FK_order_details_menu` (`menu_id`),
  ADD KEY `FK_order_details_orders` (`order_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_stock`),
  ADD KEY `FK_stock_unit` (`type_unit`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id_unit`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admixture`
--
ALTER TABLE `admixture`
  MODIFY `id_admixture` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `expenditure`
--
ALTER TABLE `expenditure`
  MODIFY `id_expenditure` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `orderd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id_unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admixture`
--
ALTER TABLE `admixture`
  ADD CONSTRAINT `FK_admixture_menu` FOREIGN KEY (`id_menu_adm`) REFERENCES `menu` (`id_menu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_admixture_stock` FOREIGN KEY (`id_stock_adm`) REFERENCES `stock` (`id_stock`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_admixture_unit` FOREIGN KEY (`id_unit_adm`) REFERENCES `unit` (`id_unit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `expenditure`
--
ALTER TABLE `expenditure`
  ADD CONSTRAINT `FK_expenditure_stock` FOREIGN KEY (`e_namestock`) REFERENCES `stock` (`id_stock`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_expenditure_unit` FOREIGN KEY (`e_unit`) REFERENCES `unit` (`id_unit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK_order_details_menu` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_order_details_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `FK_stock_unit` FOREIGN KEY (`type_unit`) REFERENCES `unit` (`id_unit`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
