-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 05:08 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accountmasrawy`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `calcbalanceitems`
-- (See below for the actual view)
--
CREATE TABLE `calcbalanceitems` (
`id` bigint(255)
,`name_items` varchar(255)
,`firstBalance` double(10,2)
,`purchase` double(10,2)
,`Sales` double(10,2)
,`nowBalance` double(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `calcbalance_purchase`
-- (See below for the actual view)
--
CREATE TABLE `calcbalance_purchase` (
`id` bigint(255)
,`name_items` varchar(255)
,`qyt_pursh` double(23,6)
,`firstbalance` bigint(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `calcbalance_sales`
-- (See below for the actual view)
--
CREATE TABLE `calcbalance_sales` (
`id` bigint(255)
,`name_items` varchar(255)
,`qyt_sales` double(23,6)
,`firstbalance` bigint(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `casher`
--

CREATE TABLE `casher` (
  `id_casher` bigint(255) NOT NULL,
  `date_casher` date NOT NULL DEFAULT curdate(),
  `Debit` double(10,2) DEFAULT NULL,
  `Creditor` double(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `id_users` int(11) NOT NULL,
  `id_purchaseInvoice` bigint(255) DEFAULT NULL,
  `id_Receipt` bigint(255) DEFAULT NULL,
  `id_salesInvoic` bigint(255) DEFAULT NULL,
  `id_PaymentReceipt` bigint(255) DEFAULT NULL,
  `id_masary_pay` int(11) DEFAULT NULL,
  `id_masary_sell` int(11) DEFAULT NULL,
  `id_Send_Receive` int(11) DEFAULT NULL,
  `id_fees` int(11) DEFAULT NULL,
  `id_Solf` int(11) DEFAULT NULL,
  `id_deficiency_excess` int(11) DEFAULT NULL,
  `id_paydebt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `casher`
--

INSERT INTO `casher` (`id_casher`, `date_casher`, `Debit`, `Creditor`, `note`, `id_users`, `id_purchaseInvoice`, `id_Receipt`, `id_salesInvoic`, `id_PaymentReceipt`, `id_masary_pay`, `id_masary_sell`, `id_Send_Receive`, `id_fees`, `id_Solf`, `id_deficiency_excess`, `id_paydebt`) VALUES
(0, '2022-07-11', 12070.00, NULL, 'رصيد مرحل', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, '2022-07-11', 150.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2022-07-11', 100.00, NULL, 'دفعة من حساب  احمد ابو عبد الله', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2022-07-11', 120.00, NULL, '01151018778', 2, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2022-07-11', 100.00, NULL, '01027724864', 2, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2022-07-11', 30.00, NULL, 'حكاية _ 25', 2, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2022-07-11', NULL, 2000.00, 'ايصال دفع رقم 1', 2, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2022-07-11', NULL, 5000.00, 'ترحيل الي جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2022-07-11', 210.00, NULL, '011', 2, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2022-07-11', 335.00, NULL, 'دفعة من حساب  المتر حسني', 2, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2022-07-11', NULL, 1500.00, 'ترحيل الي جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2022-07-11', 250.00, NULL, '0974909057', 2, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2022-07-11', 200.00, NULL, '01105919500', 2, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2022-07-11', 75.00, NULL, '01137840272', 2, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2022-07-11', 0.00, NULL, '15', 2, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2022-07-11', 270.00, NULL, '01145914130', 2, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2022-07-11', 130.00, NULL, '01103935385 ', 2, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '2022-07-11', NULL, 48.00, 'اكل', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(40, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 44, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2022-07-11', NULL, 300.00, 'سداد قسط', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL),
(44, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '2022-07-11', 70.00, NULL, '01141845954', 2, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '2022-07-11', 300.00, NULL, '', 2, NULL, NULL, NULL, NULL, 47, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '2022-07-11', 15.00, NULL, '01105919500', 2, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '2022-07-11', 15.00, NULL, 'كرت 15', 2, NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '2022-07-11', NULL, 3000.00, 'ترحيل الي جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '2022-07-11', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '2022-07-12', 60.00, NULL, 'فاتورة مبيعات نقدية1', 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '2022-07-12', 150.00, NULL, '01141156734', 2, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 62, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '2022-07-12', NULL, 2500.00, 'ترحيل الي جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '2022-07-12', 40.00, NULL, 'فاتورة مبيعات نقدية2', 2, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '2022-07-12', 1500.00, NULL, 'دفعة من حساب  طارق اب مدغة', 2, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '2022-07-12', NULL, 1500.00, 'ترحيل الي جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '2022-07-12', 40.00, NULL, 'فاتورة مبيعات نقدية3', 2, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '2022-07-12', 70.00, NULL, 'فاتورة مبيعات نقدية4', 2, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '2022-07-12', 70.00, NULL, '01553072625', 2, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '2022-07-12', 55.00, NULL, 'حكاية 50', 2, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '2022-07-12', 105.00, NULL, '01152837810', 2, NULL, NULL, NULL, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '2022-07-12', NULL, 600.00, 'ترحيل الي جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '2022-07-12', 400.00, NULL, 'سحب من جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '2022-07-12', NULL, 490.00, 'تحويل فودافون كاش ', 2, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL),
(77, '2022-07-12', 810.00, NULL, 'تحويل فودافون كاش 01050054125', 2, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL),
(78, '2022-07-12', 10700.00, NULL, 'سحب من جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '2022-07-12', 2000.00, NULL, 'سحب من جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 72, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '2022-07-12', 40.00, NULL, '011000', 2, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '2022-07-12', 150.00, NULL, '01030506916', 2, NULL, NULL, NULL, NULL, 76, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '2022-07-12', 75.00, NULL, 'فاتورة مبيعات نقدية5', 2, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '2022-07-12', 225.00, NULL, '01007983995', 2, NULL, NULL, NULL, NULL, 77, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '2022-07-12', 300.00, NULL, '01007983995 ', 2, NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '2022-07-12', 300.00, NULL, '01007983995 ', 2, NULL, NULL, NULL, NULL, 79, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '2022-07-12', 247.50, NULL, '01007983995 ', 2, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '2022-07-12', 30.00, NULL, '01007983995 ', 2, NULL, NULL, NULL, NULL, 81, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '2022-07-12', 18000.00, NULL, 'الشيخ علاء سداد احمد بكري', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(96, '2022-07-12', 60.00, NULL, '60 كارت', 2, NULL, NULL, NULL, NULL, 84, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '2022-07-12', 65.00, NULL, 'حكاية 65', 2, NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '2022-07-12', 15.00, NULL, '15', 2, NULL, NULL, NULL, NULL, 87, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '2022-07-12', 150.00, NULL, '0972297410', 2, NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '2022-07-12', 75.00, NULL, '01153161690', 2, NULL, NULL, NULL, NULL, 89, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '2022-07-12', 30.00, NULL, 'حكاية 25', 2, NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '2022-07-12', 15.00, NULL, '13.5', 2, NULL, NULL, NULL, NULL, 94, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '2022-07-12', 55.00, NULL, 'حكاية 50', 2, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '2022-07-12', 181.50, NULL, '01007983995 ', 2, NULL, NULL, NULL, NULL, 96, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 97, NULL, NULL, NULL, NULL, NULL, NULL),
(110, '2022-07-12', 7.50, NULL, '01155483122', 2, NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '2022-07-12', 75.00, NULL, '01556007359', 2, NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '2022-07-12', 20.00, NULL, '01556007359', 2, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '2022-07-12', 70.00, NULL, 'فاتورة مبيعات نقدية6', 2, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '2022-07-12', 40.00, NULL, '0972297223', 2, NULL, NULL, NULL, NULL, 101, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '2022-07-12', 20.00, NULL, '01142783002', 2, NULL, NULL, NULL, NULL, 102, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 104, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 105, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 106, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 107, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '2022-07-12', NULL, 30300.00, 'ايصال دفع رقم 2', 2, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '2022-07-12', 55.00, NULL, 'شحن كروت الكهرباء', 2, NULL, NULL, NULL, NULL, 109, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '2022-07-12', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 110, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '2022-07-13', 60.50, NULL, '01553072625 ', 2, NULL, NULL, NULL, NULL, 113, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 115, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 116, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 117, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 118, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '2022-07-13', 6.00, NULL, '01553072625 ', 2, NULL, NULL, NULL, NULL, 119, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '2022-07-13', 65.00, NULL, 'فاتورة مبيعات نقدية7', 2, NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '2022-07-13', NULL, 100.00, 'للبيت و سجاير', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL),
(135, '2022-07-13', NULL, 100.00, 'قسط ايمن لمعي', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL),
(136, '2022-07-13', 50.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '2022-07-13', 40.00, NULL, 'فاتورة مبيعات نقدية8', 2, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 122, NULL, NULL, NULL, NULL, NULL, NULL),
(139, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 123, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 124, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 125, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 126, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '2022-07-13', 150.00, NULL, '01550344913', 2, NULL, NULL, NULL, NULL, 127, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '2022-07-13', 150.00, NULL, 'دفعة من حساب  رضا خ محمود', 2, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '2022-07-13', 35.00, NULL, 'دفعة من حساب  محمد اب عبده', 2, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '2022-07-13', NULL, 185.00, 'احمد _ حساب محمد عبده _ رضا', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL),
(147, '2022-07-13', 100.00, NULL, '01557805712', 2, NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '2022-07-13', 25.00, NULL, 'فاتورة مبيعات نقدية9', 2, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, '2022-07-13', 30.00, NULL, 'فاتورة مبيعات نقدية10', 2, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 129, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '2022-07-13', NULL, 610.00, 'عجز', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(152, '2022-07-13', 25.00, NULL, 'فاتورة مبيعات نقدية11', 2, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '2022-07-13', NULL, 500.00, 'ايصال دفع رقم 3', 2, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '2022-07-13', 5.00, NULL, 'كرت 5', 2, NULL, NULL, NULL, NULL, 130, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '2022-07-13', 11.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 131, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '2022-07-13', 60.00, NULL, 'حكاية 25', 2, NULL, NULL, NULL, NULL, 132, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '2022-07-13', 150.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 133, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '2022-07-13', 5.00, NULL, 'كرت 5', 2, NULL, NULL, NULL, NULL, 134, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '2022-07-13', 100.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 135, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '2022-07-13', 30.00, NULL, 'فاتورة مبيعات نقدية12', 2, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '2022-07-13', 2850.00, NULL, 'تحويل فودافون كاش 01032509970', 2, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(162, '2022-07-13', 5050.00, NULL, 'تحويل فودافون كاش 01226758330', 2, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL),
(163, '2022-07-13', 100.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 136, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '2022-07-13', 105.00, NULL, '100', 2, NULL, NULL, NULL, NULL, 137, NULL, NULL, NULL, NULL, NULL, NULL),
(165, '2022-07-13', 105.00, NULL, 'كارت 100', 2, NULL, NULL, NULL, NULL, 138, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '2022-07-13', 15.00, NULL, 'فكة 15', 2, NULL, NULL, NULL, NULL, 139, NULL, NULL, NULL, NULL, NULL, NULL),
(167, '2022-07-13', 20.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 140, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '2022-07-13', 25.00, NULL, 'حكاية 25', 2, NULL, NULL, NULL, NULL, 141, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '2022-07-13', 11.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 142, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '2022-07-13', 20.00, NULL, 'كرت 10', 2, NULL, NULL, NULL, NULL, 143, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '2022-07-13', 40.00, NULL, '', 2, NULL, NULL, NULL, NULL, 144, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '2022-07-13', 30.00, NULL, 'كرت 30', 2, NULL, NULL, NULL, NULL, 145, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '2022-07-13', 143.00, NULL, '01552052710', 2, NULL, NULL, NULL, NULL, 146, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '2022-07-13', 100.00, NULL, '', 2, NULL, NULL, NULL, NULL, 147, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 148, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '2022-07-13', 50.00, NULL, 'فاتورة مبيعات نقدية13', 2, NULL, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, '2022-07-13', 45.00, NULL, 'حكاية 35', 2, NULL, NULL, NULL, NULL, 149, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '2022-07-13', 4000.00, NULL, 'تحويل فودافون كاش 010', 2, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL),
(179, '2022-07-13', 200.00, NULL, '01140435388', 2, NULL, NULL, NULL, NULL, 150, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '2022-07-13', NULL, 15000.00, 'ترحيل الي جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 151, NULL, NULL, NULL, NULL, NULL, NULL),
(182, '2022-07-13', 45.00, NULL, '011543', 2, NULL, NULL, NULL, NULL, 152, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 153, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 154, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '2022-07-13', 35.00, NULL, 'فاتورة مبيعات نقدية15', 2, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '2022-07-13', NULL, 1000.00, 'تحويل فودافون كاش ', 2, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL),
(188, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 155, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 156, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 157, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '2022-07-13', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 158, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '2022-07-14', 3000.00, NULL, 'تحويل فودافون كاش 0100720', 2, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL),
(193, '2022-07-14', 35.00, NULL, 'فاتورة مبيعات نقدية16', 2, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '2022-07-14', 75.00, NULL, 'فاتورة مبيعات نقدية17', 2, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '2022-07-14', 85.00, NULL, 'فاتورة مبيعات نقدية18', 2, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '2022-07-14', NULL, 3000.00, 'سداد مبلغ السلفة 3000.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7),
(200, '2022-07-14', 150.00, NULL, '01026996176', 2, NULL, NULL, NULL, NULL, 159, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '2022-07-14', 150.00, NULL, '01158423169', 2, NULL, NULL, NULL, NULL, 160, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '2022-07-14', 140.00, NULL, '01201925584', 2, NULL, NULL, NULL, NULL, 161, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '2022-07-14', 22.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 162, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '2022-07-14', 50.00, NULL, '011000 ', 2, NULL, NULL, NULL, NULL, 163, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '2022-07-14', 65.00, NULL, '012', 2, NULL, NULL, NULL, NULL, 164, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '2022-07-14', 30.00, NULL, '01553072625 ', 2, NULL, NULL, NULL, NULL, 165, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 166, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 167, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 168, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '2022-07-14', 100.00, NULL, '011000 ', 2, NULL, NULL, NULL, NULL, 169, NULL, NULL, NULL, NULL, NULL, NULL),
(211, '2022-07-14', 150.00, NULL, '011000 ', 2, NULL, NULL, NULL, NULL, 170, NULL, NULL, NULL, NULL, NULL, NULL),
(212, '2022-07-14', 505.00, NULL, 'تحويل فودافون كاش 01005652354', 2, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL),
(213, '2022-07-14', 2830.00, NULL, 'تحويل فودافون كاش 01007179435', 2, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL),
(214, '2022-07-14', 200.00, NULL, 'تحويل فودافون كاش 010', 2, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL),
(215, '2022-07-14', NULL, 200.00, 'تحويلة كاش مع احمد', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL),
(216, '2022-07-14', 145.00, NULL, '', 2, NULL, NULL, NULL, NULL, 171, NULL, NULL, NULL, NULL, NULL, NULL),
(217, '2022-07-14', 150.00, NULL, '010', 2, NULL, NULL, NULL, NULL, 172, NULL, NULL, NULL, NULL, NULL, NULL),
(218, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 173, NULL, NULL, NULL, NULL, NULL, NULL),
(219, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 174, NULL, NULL, NULL, NULL, NULL, NULL),
(220, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 175, NULL, NULL, NULL, NULL, NULL, NULL),
(221, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 176, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 177, NULL, NULL, NULL, NULL, NULL, NULL),
(223, '2022-07-14', 10.00, NULL, '7', 2, NULL, NULL, NULL, NULL, 178, NULL, NULL, NULL, NULL, NULL, NULL),
(224, '2022-07-14', NULL, 245.00, 'تحويل فودافون كاش ', 2, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL),
(225, '2022-07-14', 510.00, NULL, 'تحويل فودافون كاش 01127751968', 2, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL),
(226, '2022-07-14', 15000.00, NULL, 'سحب من جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '2022-07-14', NULL, 15000.00, 'سداد مبلغ السلفة 15000.0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8),
(230, '2022-07-14', 1010.00, NULL, 'تحويل فودافون كاش 01033905970', 2, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL),
(231, '2022-07-14', 305.00, NULL, 'تحويل فودافون كاش 01094953800', 2, NULL, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL),
(232, '2022-07-14', 2000.00, NULL, 'تحويل فودافون كاش 01018284576', 2, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL),
(233, '2022-07-14', 200.00, NULL, '011564125', 2, NULL, NULL, NULL, NULL, 179, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '2022-07-14', 200.00, NULL, '0115923210', 2, NULL, NULL, NULL, NULL, 180, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '2022-07-14', 110.00, NULL, '0112785021', 2, NULL, NULL, NULL, NULL, 181, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '2022-07-14', 55.00, NULL, 'حكاية 50', 2, NULL, NULL, NULL, NULL, 182, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 183, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 184, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 185, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '2022-07-14', 35.00, NULL, 'فاتورة مبيعات نقدية19', 2, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, '2022-07-14', 50.00, NULL, 'حكاية 50', 2, NULL, NULL, NULL, NULL, 186, NULL, NULL, NULL, NULL, NULL, NULL),
(242, '2022-07-14', 75.00, NULL, '01159691822', 2, NULL, NULL, NULL, NULL, 187, NULL, NULL, NULL, NULL, NULL, NULL),
(243, '2022-07-14', 2020.00, NULL, 'تحويل فودافون كاش 01007983995 ', 2, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL),
(244, '2022-07-14', NULL, 520.00, 'ايصال دفع رقم 4', 2, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, '2022-07-14', 225.00, NULL, '011', 2, NULL, NULL, NULL, NULL, 188, NULL, NULL, NULL, NULL, NULL, NULL),
(246, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 189, NULL, NULL, NULL, NULL, NULL, NULL),
(247, '2022-07-14', 150.00, NULL, '01103935385 ', 2, NULL, NULL, NULL, NULL, 190, NULL, NULL, NULL, NULL, NULL, NULL),
(248, '2022-07-14', 30.00, NULL, 'فاتورة مبيعات نقدية20', 2, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, '2022-07-14', 75.00, NULL, 'فاتورة مبيعات نقدية21', 2, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, '2022-07-14', NULL, 10000.00, 'ترحيل الي جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '2022-07-14', 750.00, NULL, 'تحويل فودافون كاش 01007983995 ', 2, NULL, NULL, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL),
(252, '2022-07-14', NULL, 1000.00, 'ايصال دفع رقم 5 _ تحويل كاش 21', 2, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, '2022-07-14', 130.00, NULL, '011', 2, NULL, NULL, NULL, NULL, 192, NULL, NULL, NULL, NULL, NULL, NULL),
(254, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 193, NULL, NULL, NULL, NULL, NULL, NULL),
(255, '2022-07-14', -200.00, NULL, 'دفعة من حساب  محمد تلاجة ', 2, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, '2022-07-14', 75.00, NULL, '', 2, NULL, NULL, NULL, NULL, 194, NULL, NULL, NULL, NULL, NULL, NULL),
(257, '2022-07-14', 9450.00, NULL, 'تحويل فودافون كاش 01027699087', 2, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL),
(258, '2022-07-14', NULL, 10000.00, 'ترحيل الي جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, '2022-07-14', 75.00, NULL, '011', 2, NULL, NULL, NULL, NULL, 195, NULL, NULL, NULL, NULL, NULL, NULL),
(260, '2022-07-14', 43.00, NULL, '01102', 2, NULL, NULL, NULL, NULL, 196, NULL, NULL, NULL, NULL, NULL, NULL),
(263, '2022-07-14', 75.00, NULL, '01155997556', 2, NULL, NULL, NULL, NULL, 199, NULL, NULL, NULL, NULL, NULL, NULL),
(264, '2022-07-14', 50.00, NULL, '01155997556', 2, NULL, NULL, NULL, NULL, 200, NULL, NULL, NULL, NULL, NULL, NULL),
(265, '2022-07-14', 75.00, NULL, '011555', 2, NULL, NULL, NULL, NULL, 201, NULL, NULL, NULL, NULL, NULL, NULL),
(266, '2022-07-14', 55.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 202, NULL, NULL, NULL, NULL, NULL, NULL),
(267, '2022-07-14', 150.00, NULL, '', 2, NULL, NULL, NULL, NULL, 203, NULL, NULL, NULL, NULL, NULL, NULL),
(268, '2022-07-14', 77.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 204, NULL, NULL, NULL, NULL, NULL, NULL),
(269, '2022-07-14', 1550.00, NULL, '', 2, NULL, NULL, NULL, NULL, 205, NULL, NULL, NULL, NULL, NULL, NULL),
(270, '2022-07-14', NULL, 3000.00, 'ترحيل الي جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 206, NULL, NULL, NULL, NULL, NULL, NULL),
(272, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 207, NULL, NULL, NULL, NULL, NULL, NULL),
(273, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 208, NULL, NULL, NULL, NULL, NULL, NULL),
(274, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 209, NULL, NULL, NULL, NULL, NULL, NULL),
(275, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 210, NULL, NULL, NULL, NULL, NULL, NULL),
(276, '2022-07-14', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 211, NULL, NULL, NULL, NULL, NULL, NULL),
(277, '2022-07-15', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 212, NULL, NULL, NULL, NULL, NULL, NULL),
(278, '2022-07-15', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 213, NULL, NULL, NULL, NULL, NULL, NULL),
(279, '2022-07-15', 200.00, NULL, '01112860121', 2, NULL, NULL, NULL, NULL, 214, NULL, NULL, NULL, NULL, NULL, NULL),
(280, '2022-07-15', 40.00, NULL, 'فاتورة مبيعات نقدية22', 2, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, '2022-07-15', 20000.00, NULL, 'سحب من جرد الثاني', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, '2022-07-15', NULL, 20000.00, 'ايصال دفع رقم 6', 2, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, '2022-07-15', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 216, NULL, NULL, NULL, NULL, NULL, NULL),
(284, '2022-07-15', 10.00, NULL, 'كرت  _ 10', 2, NULL, NULL, NULL, NULL, 217, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Triggers `casher`
--
DELIMITER $$
CREATE TRIGGER `ubdate_balance_casher` AFTER INSERT ON `casher` FOR EACH ROW BEGIN
     DECLARE oldbalance DOUBLE ;
    DECLARE totalDebit double ;
    DECLARE totalCredit double;
    -- DECLARE newbalance DOUBLE ;
        -- set totalDebit
    SELECT
        SUM(casher.Debit)
    INTO @totalDebit
FROM
    casher
WHERE
    casher.date_casher = CURRENT_DATE() ;
    -- set new balance
  SELECT Sum(casher.Creditor) INTO @totalCredit FROM casher WHERE casher.date_casher =CURRENT_DATE();
SELECT finallyday.oldBalance INTO @oldbalance FROM finallyday WHERE finallyday.dateFinally = CURRENT_DATE();
UPDATE
    finallyday
SET
   finallyday.totalimport = @totalDebit , finallyday.totalexport = @totalCredit , finallyday.newbalance = (@oldbalance + @totalDebit - @totalCredit) WHERE finallyday.dateFinally = CURRENT_DATE() ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `cashertwo`
--

CREATE TABLE `cashertwo` (
  `id_CasherTwo` int(11) NOT NULL,
  `date_Casher` date DEFAULT curdate(),
  `time_Casher` time DEFAULT curtime(),
  `Debit` double(10,2) DEFAULT 0.00,
  `Creditor` double(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cashertwo`
--

INSERT INTO `cashertwo` (`id_CasherTwo`, `date_Casher`, `time_Casher`, `Debit`, `Creditor`) VALUES
(1, '2022-07-11', '19:47:46', 5000.00, 0.00),
(2, '2022-07-11', '22:04:59', 1500.00, 0.00),
(3, '2022-07-11', '23:49:09', 3000.00, 0.00),
(4, '2022-07-12', '10:12:51', 2500.00, 0.00),
(5, '2022-07-12', '11:30:44', 1500.00, 0.00),
(6, '2022-07-12', '13:16:47', 600.00, 0.00),
(7, '2022-07-12', '19:08:28', 0.00, 400.00),
(8, '2022-07-12', '21:04:17', 0.00, 10700.00),
(9, '2022-07-12', '21:13:50', 0.00, 2000.00),
(10, '2022-07-13', '21:20:28', 15000.00, 0.00),
(11, '2022-07-14', '17:02:55', 0.00, 15000.00),
(12, '2022-07-14', '22:01:10', 10000.00, 0.00),
(13, '2022-07-14', '22:24:17', 10000.00, 0.00),
(14, '2022-07-14', '23:55:28', 3000.00, 0.00),
(15, '2022-07-15', '03:21:37', 0.00, 20000.00);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cashertwobalance`
-- (See below for the actual view)
--
CREATE TABLE `cashertwobalance` (
`Balance` double(19,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `categoryutilites`
--

CREATE TABLE `categoryutilites` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(512) DEFAULT NULL,
  `requier_phone` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categoryutilites`
--

INSERT INTO `categoryutilites` (`id_category`, `name_category`, `requier_phone`) VALUES
(1, 'كروت اتصالات', 0),
(2, 'كروت اورنج', 0),
(3, 'كروت WE', 0),
(4, 'كروت فودافون', 0),
(9, 'اتصالات حكاية', 0),
(10, 'شحن', 1),
(11, 'فودافون كاش', 1),
(12, 'سداد قروض', 1),
(13, 'فواتير النت و الارضي', 1),
(14, 'فواتير', 1),
(15, 'مرافق عامة', 0);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` bigint(255) NOT NULL,
  `name_client` varchar(512) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `idNational` varchar(14) DEFAULT NULL,
  `firstBalance` double NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `name_client`, `phone`, `address`, `idNational`, `firstBalance`, `isActive`) VALUES
(1, 'عميل نقدي', NULL, NULL, NULL, 0, 1),
(2, 'احمد ابو عبد الله', '', '', '', 0, 1),
(3, 'ركابي صابر', '', '', '', 0, 1),
(4, 'محمد اب عبده', '', '', '', 0, 1),
(5, 'المتر حسني', '', '', '', 350, 1),
(6, 'رضا خ محمود', '', '', '', 0, 1),
(7, 'اسعد السوداني', '', '', '', 1100, 1),
(8, 'طارق اب مدغة', '01097484565', '', '', 0, 1),
(9, 'السايح مطعم', '', '', '', 0, 1),
(10, 'احمد وافي', '', '', '', 0, 1),
(11, 'عرفه', '', '', '', 0, 1),
(12, 'محمود ابو ريناد', '', '', '', 0, 1),
(13, 'احمد شعبان', '', '', '', 0, 1),
(14, 'محمد تلاجة ', '', '', '', 0, 1),
(15, 'خالد عجاج', '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clientaccount`
--

CREATE TABLE `clientaccount` (
  `id_ClientAccount` bigint(255) NOT NULL,
  `date_ClientAccount` date DEFAULT NULL,
  `Debit` double(10,2) DEFAULT NULL,
  `Creditor` double(10,2) DEFAULT NULL,
  `id_client` bigint(255) DEFAULT NULL,
  `id_salesInvoic` bigint(255) DEFAULT NULL,
  `id_Receipt` bigint(255) DEFAULT NULL,
  `id_masary_pay` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientaccount`
--

INSERT INTO `clientaccount` (`id_ClientAccount`, `date_ClientAccount`, `Debit`, `Creditor`, `id_client`, `id_salesInvoic`, `id_Receipt`, `id_masary_pay`, `note`, `isActive`) VALUES
(1, '2022-07-11', 150.00, NULL, 2, NULL, NULL, 10, '01', 1),
(2, '2022-07-11', NULL, 100.00, 2, NULL, 1, NULL, 'دفعة من حساب  احمد ابو عبد الله', 1),
(3, '2022-07-11', 75.00, NULL, 3, NULL, NULL, 12, '01151450004', 1),
(4, '2022-07-11', 35.00, NULL, 4, NULL, NULL, 14, 'حكاية _ 35', 1),
(5, '2022-07-11', NULL, 335.00, 5, NULL, 2, NULL, 'دفعة من حساب  المتر حسني', 1),
(6, '2022-07-11', 150.00, NULL, 6, NULL, NULL, 53, '', 1),
(7, '2022-07-12', 1500.00, NULL, 8, NULL, NULL, 63, '01097484565', 1),
(8, '2022-07-12', NULL, 1500.00, 8, NULL, 3, NULL, 'دفعة من حساب  طارق اب مدغة', 1),
(9, '2022-07-12', 10.00, NULL, 9, NULL, NULL, 111, 'كرت  _ 10', 1),
(10, '2022-07-12', 105.00, NULL, 10, NULL, NULL, 112, 'كرت 100', 1),
(12, '2022-07-13', NULL, 150.00, 6, NULL, 4, NULL, 'دفعة من حساب  رضا خ محمود', 1),
(13, '2022-07-13', NULL, 35.00, 4, NULL, 5, NULL, 'دفعة من حساب  محمد اب عبده', 1),
(14, NULL, 16.00, NULL, 15, NULL, NULL, 191, 'كرت 15', 1),
(15, '2022-07-14', NULL, -200.00, 14, NULL, 6, NULL, 'دفعة من حساب  محمد تلاجة ', 1),
(16, NULL, 32.00, NULL, 9, NULL, NULL, 215, 'كرت 15', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `debitandcreditorclient`
-- (See below for the actual view)
--
CREATE TABLE `debitandcreditorclient` (
`date_ClientAccount` date
,`Debit` double(10,2)
,`Creditor` double(10,2)
,`id_client` bigint(255)
,`name_client` varchar(512)
,`id_salesInvoic` bigint(255)
,`id_Receipt` bigint(255)
,`note` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `debitandcreditorsupplier`
-- (See below for the actual view)
--
CREATE TABLE `debitandcreditorsupplier` (
`date_suppliersAccount` date
,`Debit` double(10,2)
,`Creditor` double(10,2)
,`id_Suppliers` bigint(255)
,`name_Suppliers` varchar(512)
,`id_purchaseInvoice` bigint(255)
,`id_paymentReceipt` bigint(255)
,`note` text
);

-- --------------------------------------------------------

--
-- Table structure for table `deficiency_excess`
--

CREATE TABLE `deficiency_excess` (
  `id_deficiency_excess` int(11) NOT NULL,
  `date_deficiency_excess` date DEFAULT curdate(),
  `debit` double(10,2) DEFAULT NULL,
  `credit` double(10,2) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deficiency_excess`
--

INSERT INTO `deficiency_excess` (`id_deficiency_excess`, `date_deficiency_excess`, `debit`, `credit`, `note`) VALUES
(1, '2022-07-13', 610.00, NULL, 'عجز');

-- --------------------------------------------------------

--
-- Table structure for table `expensescategory`
--

CREATE TABLE `expensescategory` (
  `id_expensesCategory` int(11) NOT NULL,
  `name_expensesCategory` varchar(512) DEFAULT NULL,
  `fBalance` double(10,2) DEFAULT NULL,
  `NBalance` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expensescategory`
--

INSERT INTO `expensescategory` (`id_expensesCategory`, `name_expensesCategory`, `fBalance`, `NBalance`) VALUES
(1, 'ايجارات', 0.00, 0.00),
(2, 'مرتبات', 0.00, 0.00),
(3, 'مصروفات نثرية', 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id_fees` int(11) NOT NULL,
  `date_fees` date DEFAULT curdate(),
  `time_fees` time DEFAULT curtime(),
  `amount` double(10,2) NOT NULL,
  `note` varchar(255) NOT NULL,
  `id_expensesCategory` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id_fees`, `date_fees`, `time_fees`, `amount`, `note`, `id_expensesCategory`) VALUES
(1, '2022-07-11', '22:31:38', 48.00, 'اكل', 3),
(2, '2022-07-11', '23:10:06', 300.00, 'سداد قسط', 3),
(3, '2022-07-13', '01:42:49', 100.00, 'للبيت و سجاير', 2),
(4, '2022-07-13', '01:43:07', 100.00, 'قسط ايمن لمعي', 3),
(5, '2022-07-13', '14:30:26', 185.00, 'احمد _ حساب محمد عبده _ رضا', 2),
(6, '2022-07-14', '16:50:33', 200.00, 'تحويلة كاش مع احمد', 2);

-- --------------------------------------------------------

--
-- Table structure for table `finallyday`
--

CREATE TABLE `finallyday` (
  `dateFinally` date NOT NULL,
  `oldBalance` double NOT NULL,
  `totalimport` double NOT NULL,
  `totalexport` double NOT NULL,
  `newbalance` double(10,2) GENERATED ALWAYS AS (`oldBalance` + `totalimport` - `totalexport`) VIRTUAL,
  `time_insert` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `finallyday`
--

INSERT INTO `finallyday` (`dateFinally`, `oldBalance`, `totalimport`, `totalexport`, `time_insert`) VALUES
('2022-07-11', 0, 14720, 11848, '23:48:51'),
('2022-07-12', 2872, 36501.5, 35390, '00:00:15'),
('2022-07-13', 3983.5, 14316.5, 17495, '00:00:05'),
('2022-07-14', 805, 42487, 42965, '00:00:06'),
('2022-07-15', 327, 20280, 20000, '00:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id_items` bigint(255) NOT NULL,
  `name_items` varchar(255) DEFAULT NULL,
  `firstbalance` bigint(255) DEFAULT NULL,
  `id` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id_items`, `name_items`, `firstbalance`, `id`) VALUES
(2018014204206, 'كبل رجال الاعمال', 0, 1),
(4414136520176, 'سماعة شعبي D21', 0, 1),
(4416336520178, 'سماعة شعبي D21_2', 0, 1),
(4952605064023, 'شاحن شعبي FT N70', 3, 1),
(5692492560695, 'شاحن شعبي', 44, 1),
(6815648454269, 'شاحن شعبي TOP N70', 1, 1),
(6815648455426, 'شاحن شعبي TOP V8', 3, 1),
(6875422190370, 'سماعة ستار - St 666', 0, 1),
(6905112458258, 'شاحن ستار ST-037', 0, 1),
(6921042107615, 'كبل ميكرو ikaku KSC-037', 0, 1),
(6921042111322, 'كبل ميكرو KaKu', 0, 1),
(6922154678772, 'ST-031 شاحن ستار ', 0, 1),
(6922252566452, 'ST - 038 شاحن ستار ', 0, 1),
(6933138622018, 'شاحن ميكرو ليدنيو ', 0, 1),
(6941027608562, 'وصلة تايب سي FASTPRO', 0, 1),
(6944561153543, 'كبل ستار ميكرو A02', 0, 1),
(6949810502219, 'كبل ستار L21A', 0, 1),
(6949810504466, 'شاحن سيارة فاست', 0, 1),
(6949810510177, 'شاحن سيارة Smart 3.0', 0, 1),
(6949810520954, 'شاحن ستار ميكرو - 777', 0, 1),
(6949810520961, 'شاحن ستار تايب سي  - 777', 0, 1),
(6954851289500, 'REMAX تايب سي ', 0, 1),
(6956116774684, 'كبل Joyroom s-L352', 0, 1),
(6965468450061, 'سماعة JY-325', 0, 1),
(6970462516446, 'كبل ميكرو Foneng', 0, 1),
(6971410555944, 'شاحن Earldom 2.1', 0, 1),
(6973224870053, 'كبل DenMen  تايب سي', 0, 1),
(6973224870305, 'شاحن DENMEN ميكرو', 0, 1),
(6973224870381, 'شاحن DENMEN تايب سي', 0, 1),
(6973224871319, 'كبل D15T تايب سي', 0, 1),
(6973965931846, 'شاحن سيارة معدن ES-CC4', 0, 1),
(6975488921007, 'سماعة ستار - ST555', 0, 1),
(6999881512181, 'سماعة سامسنج عضم ', 0, 1),
(7720190427021, 'سماعة ستار R4', 0, 1),
(8434350001004, 'سماعة DP-H01', 0, 1),
(9988854278909, 'كبل ستار 015', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `itemsonpurchaseinvoice`
--

CREATE TABLE `itemsonpurchaseinvoice` (
  `id` bigint(255) DEFAULT NULL,
  `id_items` bigint(255) DEFAULT NULL,
  `name_items` varchar(512) DEFAULT NULL,
  `qyt` double(10,2) DEFAULT NULL,
  `name_unit` varchar(512) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `Amount` double(10,2) DEFAULT NULL,
  `id_purchaseInvoice` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itemsonpurchaseinvoice`
--

INSERT INTO `itemsonpurchaseinvoice` (`id`, `id_items`, `name_items`, `qyt`, `name_unit`, `price`, `discount`, `Amount`, `id_purchaseInvoice`) VALUES
(1, 6954851289500, 'REMAX تايب سي ', 10.00, 'قطعة', 30.00, 0.00, 300.00, 1),
(2, 6973965931846, 'شاحن سيارة معدن ES-CC4', 10.00, 'قطعة', 55.00, 0.00, 550.00, 1),
(3, 6941027608562, 'وصلة تايب سي FASTPRO', 10.00, 'قطعة', 25.00, 0.00, 250.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `itemsonsalesinvoice`
--

CREATE TABLE `itemsonsalesinvoice` (
  `id` bigint(255) DEFAULT NULL,
  `id_items` bigint(255) DEFAULT NULL,
  `name_items` varchar(512) DEFAULT NULL,
  `qyt` double(10,2) DEFAULT NULL,
  `name_unit` varchar(512) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `Amount` double(10,2) DEFAULT NULL,
  `id_salesInvoic` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itemsonsalesinvoice`
--

INSERT INTO `itemsonsalesinvoice` (`id`, `id_items`, `name_items`, `qyt`, `name_unit`, `price`, `discount`, `Amount`, `id_salesInvoic`) VALUES
(1, 6922252566452, 'ST - 038 شاحن ستار ', 1.00, 'قطعة', 60.00, 0.00, 60.00, 1),
(1, 6973224870053, 'كبل DenMen  تايب سي', 1.00, 'قطعة', 40.00, 0.00, 40.00, 2),
(1, 6999881512181, 'سماعة سامسنج عضم ', 1.00, 'قطعة', 40.00, 0.00, 40.00, 3),
(1, 6949810520954, 'شاحن ستار ميكرو - 777', 1.00, 'قطعة', 70.00, 0.00, 70.00, 4),
(1, 6975488921007, 'سماعة ستار - ST555', 1.00, 'قطعة', 75.00, 0.00, 75.00, 5),
(1, 6922154678772, 'ST-031 شاحن ستار ', 1.00, 'قطعة', 70.00, 0.00, 70.00, 6),
(1, 6971410555944, 'شاحن Earldom 2.1', 1.00, 'قطعة', 65.00, 0.00, 65.00, 7),
(1, 7720190427021, 'سماعة ستار R4', 1.00, 'قطعة', 40.00, 0.00, 40.00, 8),
(1, 6949810502219, 'كبل ستار L21A', 1.00, 'قطعة', 25.00, 0.00, 25.00, 9),
(1, 4414136520176, 'سماعة شعبي D21', 1.00, 'قطعة', 30.00, 0.00, 30.00, 10),
(1, 4416336520178, 'سماعة شعبي D21_2', 1.00, 'قطعة', 25.00, 0.00, 25.00, 11),
(1, 6949810502219, 'كبل ستار L21A', 1.00, 'قطعة', 30.00, 0.00, 30.00, 12),
(1, 6949810504466, 'شاحن سيارة فاست', 1.00, 'قطعة', 50.00, 0.00, 50.00, 13),
(1, 5692492560695, 'شاحن شعبي', 1.00, 'قطعة', 35.00, 0.00, 35.00, 15),
(1, 6973224870053, 'كبل DenMen  تايب سي', 1.00, 'قطعة', 35.00, 0.00, 35.00, 16),
(1, 6971410555944, 'شاحن Earldom 2.1', 1.00, 'قطعة', 75.00, 0.00, 75.00, 17),
(1, 6875422190370, 'سماعة ستار - St 666', 1.00, 'قطعة', 85.00, 0.00, 85.00, 18),
(1, 9988854278909, 'كبل ستار 015', 1.00, 'قطعة', 35.00, 0.00, 35.00, 19),
(1, 4416336520178, 'سماعة شعبي D21_2', 1.00, 'قطعة', 30.00, 0.00, 30.00, 20),
(1, 6975488921007, 'سماعة ستار - ST555', 1.00, 'قطعة', 75.00, 0.00, 75.00, 21),
(1, 6944561153543, 'كبل ستار ميكرو A02', 1.00, 'قطعة', 40.00, 0.00, 40.00, 22);

-- --------------------------------------------------------

--
-- Table structure for table `masary_pay`
--

CREATE TABLE `masary_pay` (
  `id_masary_pay` int(11) NOT NULL,
  `date_masary_pay` date NOT NULL DEFAULT curdate(),
  `time_masary_pay` time DEFAULT curtime(),
  `id_utility_masary` int(11) DEFAULT NULL,
  `price_masary_pay` double(10,2) NOT NULL,
  `id_client` bigint(20) DEFAULT NULL,
  `discount_of_balance` double(10,2) DEFAULT NULL,
  `amount_masary_pay` double(10,2) DEFAULT NULL,
  `id_pos` int(11) NOT NULL DEFAULT 1,
  `balance` double NOT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masary_pay`
--

INSERT INTO `masary_pay` (`id_masary_pay`, `date_masary_pay`, `time_masary_pay`, `id_utility_masary`, `price_masary_pay`, `id_client`, `discount_of_balance`, `amount_masary_pay`, `id_pos`, `balance`, `phone`) VALUES
(2, '2022-07-11', '17:50:41', 79, 15.00, 1, 150.00, 150.00, 4, 411, 'كرت  _ 10'),
(10, '2022-07-11', '18:28:36', 91, 100.00, 1, 143.00, 150.00, 2, 3895, '01015768286'),
(11, '2022-07-11', '18:52:24', 73, 80.00, 1, 114.40, 120.00, 2, 3780.6, '01151018778'),
(12, '2022-07-11', '18:53:36', 73, 75.00, 1, 107.25, 112.50, 2, 3673.35, '01151450004'),
(14, '2022-07-11', '18:57:12', 93, 35.00, 1, 35.00, 35.00, 2, 3638.35, 'حكاية _ 35'),
(16, '2022-07-11', '19:21:23', 94, 25.00, 1, 25.00, 30.00, 2, 3503.35, 'حكاية _ 25'),
(17, '2022-07-11', '19:37:16', 78, 10.00, 1, 10.00, 10.00, 4, 401, 'كرت  _ 10'),
(18, '2022-07-11', '19:49:56', 78, 10.00, 1, 10.00, 10.00, 4, 391, 'كرت  _ 10'),
(19, '2022-07-11', '20:00:13', 78, 10.00, 1, 10.00, 10.00, 4, 381, 'كرت  _ 10'),
(20, '2022-07-11', '20:04:25', 78, 10.00, 1, 10.00, 10.00, 4, 371, 'كرت  _ 10'),
(21, '2022-07-11', '20:20:12', 76, 10.00, 1, 10.00, 10.00, 2, 3560.35, 'كرت  _ 10'),
(22, '2022-07-11', '20:28:10', 73, 140.00, 1, 200.20, 210.00, 4, 170.8, '011'),
(23, '2022-07-11', '22:11:00', 95, 242.90, 1, 242.90, 250.00, 2, 3317.45, '0974909057'),
(24, '2022-07-11', '22:15:03', 73, 133.00, 1, 190.00, 200.00, 2, 3127.45, '01105919500'),
(25, '2022-07-11', '22:15:31', 73, 50.00, 1, 71.50, 75.00, 2, 3055.95, '01137840272'),
(26, '2022-07-11', '22:17:36', 41, 8.00, 1, 120.00, 0.00, 1, 1909, '15'),
(27, '2022-07-11', '22:18:37', 39, 10.00, 1, 10.00, 10.00, 1, 1899, 'كرت  _ 10'),
(28, '2022-07-11', '22:19:17', 39, 10.00, 1, 10.00, 10.00, 1, 1889, 'كرت  _ 10'),
(29, '2022-07-11', '22:19:18', 39, 10.00, 1, 10.00, 10.00, 1, 1879, 'كرت  _ 10'),
(30, '2022-07-11', '22:19:32', 39, 10.00, 1, 10.00, 10.00, 1, 1869, 'كرت  _ 10'),
(31, '2022-07-11', '22:19:32', 39, 10.00, 1, 10.00, 10.00, 1, 1859, 'كرت  _ 10'),
(32, '2022-07-11', '22:19:33', 39, 10.00, 1, 10.00, 10.00, 1, 1849, 'كرت  _ 10'),
(33, '2022-07-11', '22:19:34', 39, 10.00, 1, 10.00, 10.00, 1, 1839, 'كرت  _ 10'),
(34, '2022-07-11', '22:19:34', 39, 10.00, 1, 10.00, 10.00, 1, 1829, 'كرت  _ 10'),
(35, '2022-07-11', '22:19:35', 39, 10.00, 1, 10.00, 10.00, 1, 1819, 'كرت  _ 10'),
(36, '2022-07-11', '22:19:36', 39, 10.00, 1, 10.00, 10.00, 1, 1809, 'كرت  _ 10'),
(37, '2022-07-11', '22:19:36', 39, 10.00, 1, 10.00, 10.00, 1, 1799, 'كرت  _ 10'),
(38, '2022-07-11', '22:19:37', 39, 10.00, 1, 10.00, 10.00, 1, 1789, 'كرت  _ 10'),
(39, '2022-07-11', '22:19:38', 39, 10.00, 1, 10.00, 10.00, 1, 1779, 'كرت  _ 10'),
(40, '2022-07-11', '22:20:55', 73, 185.00, 1, 264.55, 270.00, 1, 1514.45, '01145914130'),
(41, '2022-07-11', '22:22:57', 73, 85.00, 1, 121.55, 130.00, 1, 1392.9, '01103935385 '),
(42, '2022-07-11', '23:04:31', 78, 10.00, 1, 10.00, 10.00, 4, 160.8, 'كرت  _ 10'),
(43, '2022-07-11', '23:04:33', 78, 10.00, 1, 10.00, 10.00, 4, 150.8, 'كرت  _ 10'),
(44, '2022-07-11', '23:04:47', 78, 10.00, 1, 10.00, 10.00, 4, 140.8, 'كرت  _ 10'),
(45, '2022-07-11', '23:15:47', 78, 10.00, 1, 10.00, 10.00, 4, 130.8, 'كرت  _ 10'),
(46, '2022-07-11', '23:16:21', 73, 46.00, 1, 65.78, 70.00, 2, 2990.17, '01141845954'),
(47, '2022-07-11', '23:17:47', 96, 300.00, 1, 303.00, 300.00, 2, 2687.17, ''),
(48, '2022-07-11', '23:18:22', 76, 10.00, 1, 10.00, 10.00, 2, 2677.17, 'كرت  _ 10'),
(49, '2022-07-11', '23:22:46', 73, 10.00, 1, 14.30, 15.00, 2, 2662.87, '01105919500'),
(50, '2022-07-11', '23:31:31', 78, 10.00, 1, 10.00, 10.00, 4, 120.8, 'كرت  _ 10'),
(51, '2022-07-11', '23:36:06', 78, 10.00, 1, 10.00, 10.00, 4, 110.8, 'كرت  _ 10'),
(52, '2022-07-11', '23:40:50', 97, 1.00, 1, 15.00, 15.00, 4, 95.8, 'كرت 15'),
(53, '2022-07-11', '23:42:36', 95, 146.00, 1, 146.00, 150.00, 2, 2520.87, ''),
(54, '2022-07-11', '23:58:19', 78, 10.00, 1, 10.00, 10.00, 4, 85.8, 'كرت  _ 10'),
(55, '2022-07-11', '23:58:20', 78, 10.00, 1, 10.00, 10.00, 4, 75.8, 'كرت  _ 10'),
(56, '2022-07-11', '23:58:21', 78, 10.00, 1, 10.00, 10.00, 4, 65.8, 'كرت  _ 10'),
(57, '2022-07-12', '00:06:04', 78, 10.00, 1, 10.00, 10.00, 4, 55.8, 'كرت  _ 10'),
(58, '2022-07-12', '00:06:05', 78, 10.00, 1, 10.00, 10.00, 4, 45.8, 'كرت  _ 10'),
(59, '2022-07-12', '00:06:06', 78, 10.00, 1, 10.00, 10.00, 4, 35.8, 'كرت  _ 10'),
(60, '2022-07-12', '00:57:25', 73, 100.00, 1, 143.00, 150.00, 2, 2373.87, '01141156734'),
(61, '2022-07-12', '01:01:00', 78, 10.00, 1, 10.00, 10.00, 4, 25.8, 'كرت  _ 10'),
(62, '2022-07-12', '09:59:03', 78, 10.00, 1, 10.00, 10.00, 4, 15.8, 'كرت  _ 10'),
(63, '2022-07-12', '10:05:08', 91, 1000.00, 1, 1430.00, 1500.00, 2, 943.87, '01097484565'),
(64, '2022-07-12', '12:00:48', 78, 10.00, 1, 10.00, 10.00, 4, 5.8, 'كرت  _ 10'),
(65, '2022-07-12', '12:49:12', 90, 63.00, 1, 63.00, 70.00, 2, 880.87, '01553072625'),
(66, '2022-07-12', '12:50:10', 98, 50.00, 1, 50.00, 55.00, 2, 830.87, 'حكاية 50'),
(67, '2022-07-12', '13:14:40', 73, 72.00, 1, 102.96, 105.00, 2, 727.91, '01152837810'),
(69, '2022-07-12', '20:52:26', 83, 300.00, 1, 300.00, 0.00, 5, 600, 'ايداع فودافون كاش'),
(70, '2022-07-12', '21:18:47', 79, 10.00, 1, 10.00, 10.00, 5, 590, 'كرت  _ 10'),
(71, '2022-07-12', '21:18:48', 79, 10.00, 1, 10.00, 10.00, 5, 580, 'كرت  _ 10'),
(72, '2022-07-12', '21:18:49', 79, 10.00, 1, 10.00, 10.00, 5, 570, 'كرت  _ 10'),
(73, '2022-07-12', '21:18:49', 79, 10.00, 1, 10.00, 10.00, 5, 560, 'كرت  _ 10'),
(74, '2022-07-12', '21:18:50', 79, 10.00, 1, 10.00, 10.00, 5, 550, 'كرت  _ 10'),
(75, '2022-07-12', '21:19:21', 73, 25.00, 1, 35.75, 40.00, 5, 514.25, '011000'),
(76, '2022-07-12', '21:19:55', 91, 100.00, 1, 143.00, 150.00, 5, 371.25, '01030506916'),
(77, '2022-07-12', '21:38:22', 91, 150.00, 1, 214.50, 225.00, 1, 1178.4, '01007983995'),
(80, '2022-07-12', '22:12:51', 91, 165.00, 1, 235.95, 247.50, 1, 942.45, '01007983995 '),
(81, '2022-07-12', '22:24:42', 91, 20.00, 1, 28.60, 30.00, 1, 913.85, '01007983995 '),
(84, '2022-07-12', '22:40:30', 66, 1.00, 1, 60.00, 60.00, 1, 853.85, '60 كارت'),
(85, '2022-07-12', '22:41:14', 39, 10.00, 1, 10.00, 10.00, 1, 843.85, 'كرت  _ 10'),
(86, '2022-07-12', '22:41:29', 99, 1.00, 1, 65.00, 65.00, 1, 778.85, 'حكاية 65'),
(87, '2022-07-12', '22:42:10', 41, 1.00, 1, 15.00, 15.00, 1, 763.85, '15'),
(88, '2022-07-12', '22:45:49', 101, 1.00, 1, 146.50, 150.00, 1, 617.35, '0972297410'),
(89, '2022-07-12', '22:46:08', 73, 50.00, 1, 71.50, 75.00, 1, 545.85, '01153161690'),
(93, '2022-07-12', '22:55:00', 71, 1.00, 1, 25.00, 30.00, 1, 520.85, 'حكاية 25'),
(94, '2022-07-12', '22:55:19', 40, 1.00, 1, 13.50, 15.00, 1, 507.35, '13.5'),
(95, '2022-07-12', '22:55:59', 102, 1.00, 1, 50.00, 55.00, 1, 457.35, 'حكاية 50'),
(96, '2022-07-12', '22:57:32', 91, 121.00, 1, 173.09, 181.50, 1, 284.26, '01007983995 '),
(97, '2022-07-12', '23:00:08', 78, 10.00, 1, 10.00, 10.00, 4, 498.8, 'كرت  _ 10'),
(98, '2022-07-12', '23:06:32', 73, 5.00, 1, 7.15, 7.50, 2, 720.76, '01155483122'),
(99, '2022-07-12', '23:06:57', 75, 72.00, 1, 72.00, 75.00, 2, 648.76, '01556007359'),
(100, '2022-07-12', '23:07:52', 75, 19.50, 1, 19.50, 20.00, 2, 629.26, '01556007359'),
(101, '2022-07-12', '23:09:46', 103, 36.20, 1, 36.20, 40.00, 2, 593.06, '0972297223'),
(102, '2022-07-12', '23:10:10', 73, 13.00, 1, 18.59, 20.00, 2, 574.47, '01142783002'),
(103, '2022-07-12', '23:10:23', 76, 10.00, 1, 10.00, 10.00, 2, 564.47, 'كرت  _ 10'),
(104, '2022-07-12', '23:10:23', 76, 10.00, 1, 10.00, 10.00, 2, 554.47, 'كرت  _ 10'),
(105, '2022-07-12', '23:10:57', 78, 10.00, 1, 10.00, 10.00, 4, 488.8, 'كرت  _ 10'),
(106, '2022-07-12', '23:10:59', 78, 10.00, 1, 10.00, 10.00, 4, 478.8, 'كرت  _ 10'),
(107, '2022-07-12', '23:11:51', 78, 10.00, 1, 10.00, 10.00, 4, 468.8, 'كرت  _ 10'),
(108, '2022-07-12', '23:11:53', 78, 10.00, 1, 10.00, 10.00, 4, 458.8, 'كرت  _ 10'),
(109, '2022-07-12', '23:25:13', 105, 50.00, 1, 52.50, 55.00, 5, 318.75, 'شحن كروت الكهرباء'),
(110, '2022-07-12', '23:32:57', 78, 10.00, 1, 10.00, 10.00, 4, 448.8, 'كرت  _ 10'),
(111, '2022-07-12', '23:36:37', 79, 1.00, 1, 10.00, 10.00, 5, 308.75, 'كرت  _ 10'),
(112, '2022-07-12', '23:40:30', 106, 1.00, 1, 100.00, 105.00, 4, 348.8, 'كرت 100'),
(113, '2022-07-13', '00:05:07', 90, 61.00, 1, 61.00, 60.50, 4, 287.8, '01553072625 '),
(114, '2022-07-13', '00:07:56', 79, 10.00, 1, 10.00, 10.00, 5, 298.75, 'كرت  _ 10'),
(115, '2022-07-13', '00:07:57', 79, 10.00, 1, 10.00, 10.00, 5, 288.75, 'كرت  _ 10'),
(116, '2022-07-13', '00:08:10', 39, 10.00, 1, 10.00, 10.00, 1, 274.26, 'كرت  _ 10'),
(117, '2022-07-13', '00:08:15', 39, 10.00, 1, 10.00, 10.00, 1, 264.26, 'كرت  _ 10'),
(118, '2022-07-13', '00:08:19', 39, 10.00, 1, 10.00, 10.00, 1, 254.26, 'كرت  _ 10'),
(119, '2022-07-13', '00:08:37', 90, 6.00, 1, 6.00, 6.00, 1, 248.26, '01553072625 '),
(120, '2022-07-13', '02:24:07', 79, 5.00, 1, 50.00, 50.00, 4, 237.8, 'كرت  _ 10'),
(122, '2022-07-13', '14:22:28', 39, 10.00, 1, 10.00, 10.00, 1, 1238.26, 'كرت  _ 10'),
(123, '2022-07-13', '14:22:30', 39, 10.00, 1, 10.00, 10.00, 1, 1228.26, 'كرت  _ 10'),
(124, '2022-07-13', '14:22:31', 39, 10.00, 1, 10.00, 10.00, 1, 1218.26, 'كرت  _ 10'),
(125, '2022-07-13', '14:22:32', 39, 10.00, 1, 10.00, 10.00, 1, 1208.26, 'كرت  _ 10'),
(126, '2022-07-13', '14:22:35', 39, 10.00, 1, 10.00, 10.00, 1, 1198.26, 'كرت  _ 10'),
(127, '2022-07-13', '14:23:05', 90, 145.00, 1, 145.00, 150.00, 1, 1053.26, '01550344913'),
(128, '2022-07-13', '14:31:29', 90, 100.00, 1, 100.00, 100.00, 2, 454.47, '01557805712'),
(129, '2022-07-13', '15:33:51', 78, 10.00, 1, 10.00, 10.00, 4, 227.8, 'كرت  _ 10'),
(130, '2022-07-13', '17:49:52', 107, 1.00, 1, 5.00, 5.00, 4, 222.8, 'كرت 5'),
(131, '2022-07-13', '17:50:01', 79, 1.00, 1, 10.00, 11.00, 4, 212.8, 'كرت  _ 10'),
(132, '2022-07-13', '17:50:57', 108, 2.00, 1, 50.00, 60.00, 4, 162.8, 'حكاية 25'),
(133, '2022-07-13', '18:16:12', 79, 15.00, 1, 150.00, 150.00, 4, 12.8, 'كرت  _ 10'),
(134, '2022-07-13', '18:16:33', 107, 1.00, 1, 5.00, 5.00, 4, 7.8, 'كرت 5'),
(135, '2022-07-13', '18:17:11', 79, 10.00, 1, 100.00, 100.00, 1, 953.26, 'كرت  _ 10'),
(136, '2022-07-13', '20:20:46', 79, 10.00, 1, 100.00, 100.00, 1, 853.26, 'كرت  _ 10'),
(137, '2022-07-13', '20:20:59', 45, 1.00, 1, 100.00, 105.00, 1, 753.26, '100'),
(138, '2022-07-13', '20:21:17', 56, 1.00, 1, 100.00, 105.00, 1, 653.26, 'كارت 100'),
(139, '2022-07-13', '20:21:45', 51, 1.00, 1, 15.00, 15.00, 1, 638.26, 'فكة 15'),
(140, '2022-07-13', '20:22:07', 79, 2.00, 1, 20.00, 20.00, 1, 618.26, 'كرت  _ 10'),
(141, '2022-07-13', '20:23:07', 108, 1.00, 1, 25.00, 25.00, 1, 593.26, 'حكاية 25'),
(142, '2022-07-13', '20:24:46', 79, 1.00, 1, 10.00, 11.00, 5, 278.75, 'كرت  _ 10'),
(143, '2022-07-13', '20:26:32', 109, 2.00, 1, 20.00, 20.00, 5, 258.75, 'كرت 10'),
(144, '2022-07-13', '20:26:58', 110, 27.00, 1, 38.61, 40.00, 5, 220.14, ''),
(145, '2022-07-13', '20:28:12', 111, 1.00, 1, 30.00, 30.00, 5, 190.14, 'كرت 30'),
(146, '2022-07-13', '20:31:06', 75, 143.00, 1, 150.00, 143.00, 2, 304.47, '01552052710'),
(147, '2022-07-13', '20:31:50', 75, 108.00, 1, 108.00, 100.00, 2, 196.47, ''),
(148, '2022-07-13', '20:36:09', 39, 10.00, 1, 10.00, 10.00, 1, 583.26, 'كرت  _ 10'),
(149, '2022-07-13', '20:43:47', 112, 1.00, 1, 35.00, 45.00, 1, 548.26, 'حكاية 35'),
(150, '2022-07-13', '20:56:03', 110, 133.00, 1, 190.19, 200.00, 2, 6.28, '01140435388'),
(151, '2022-07-13', '21:37:58', 79, 10.00, 1, 10.00, 10.00, 5, 180.14, 'كرت  _ 10'),
(152, '2022-07-13', '21:38:09', 110, 30.00, 1, 42.90, 45.00, 5, 137.24, '011543'),
(153, '2022-07-13', '22:25:05', 79, 10.00, 1, 10.00, 10.00, 5, 2119.24, 'كرت  _ 10'),
(154, '2022-07-13', '22:25:06', 79, 10.00, 1, 10.00, 10.00, 5, 2109.24, 'كرت  _ 10'),
(155, '2022-07-13', '22:50:09', 79, 10.00, 1, 10.00, 10.00, 5, 2099.24, 'كرت  _ 10'),
(156, '2022-07-13', '22:50:10', 79, 10.00, 1, 10.00, 10.00, 5, 2089.24, 'كرت  _ 10'),
(157, '2022-07-13', '22:50:14', 79, 10.00, 1, 10.00, 10.00, 5, 2079.24, 'كرت  _ 10'),
(158, '2022-07-13', '22:50:15', 79, 10.00, 1, 10.00, 10.00, 5, 2069.24, 'كرت  _ 10'),
(159, '2022-07-14', '16:25:42', 91, 100.00, 1, 143.00, 150.00, 2, 1853.28, '01026996176'),
(160, '2022-07-14', '16:26:15', 110, 100.00, 1, 143.00, 150.00, 2, 1710.28, '01158423169'),
(161, '2022-07-14', '16:35:22', 113, 1.00, 1, 138.90, 140.00, 2, 1571.38, '01201925584'),
(162, '2022-07-14', '16:39:14', 79, 2.00, 1, 20.00, 22.00, 5, 2049.24, 'كرت  _ 10'),
(163, '2022-07-14', '16:41:01', 110, 35.00, 1, 50.05, 50.00, 5, 1999.19, '011000 '),
(164, '2022-07-14', '16:41:19', 89, 43.00, 1, 61.49, 65.00, 5, 1937.7, '012'),
(165, '2022-07-14', '16:41:36', 90, 29.00, 1, 29.00, 30.00, 5, 1908.7, '01553072625 '),
(166, '2022-07-14', '16:41:43', 79, 10.00, 1, 10.00, 10.00, 5, 1898.7, 'كرت  _ 10'),
(167, '2022-07-14', '16:41:44', 79, 10.00, 1, 10.00, 10.00, 5, 1888.7, 'كرت  _ 10'),
(168, '2022-07-14', '16:41:45', 79, 10.00, 1, 10.00, 10.00, 5, 1878.7, 'كرت  _ 10'),
(169, '2022-07-14', '16:42:00', 110, 70.00, 1, 100.10, 100.00, 5, 1778.6, '011000 '),
(170, '2022-07-14', '16:43:51', 110, 100.00, 1, 143.00, 150.00, 5, 1635.6, '011000 '),
(171, '2022-07-14', '16:52:40', 101, 142.00, 1, 140.80, 145.00, 1, 407.46, ''),
(172, '2022-07-14', '16:53:01', 91, 100.00, 1, 143.00, 150.00, 1, 264.46, '010'),
(173, '2022-07-14', '16:53:11', 39, 10.00, 1, 10.00, 10.00, 1, 254.46, 'كرت  _ 10'),
(174, '2022-07-14', '16:53:34', 39, 10.00, 1, 10.00, 10.00, 1, 244.46, 'كرت  _ 10'),
(175, '2022-07-14', '16:53:35', 39, 10.00, 1, 10.00, 10.00, 1, 234.46, 'كرت  _ 10'),
(176, '2022-07-14', '16:53:36', 39, 10.00, 1, 10.00, 10.00, 1, 224.46, 'كرت  _ 10'),
(177, '2022-07-14', '16:53:38', 39, 10.00, 1, 10.00, 10.00, 1, 214.46, 'كرت  _ 10'),
(178, '2022-07-14', '16:54:29', 37, 1.00, 1, 7.00, 10.00, 1, 207.46, '7'),
(179, '2022-07-14', '19:20:16', 110, 134.00, 1, 191.62, 200.00, 5, 1443.98, '011564125'),
(180, '2022-07-14', '19:21:36', 110, 134.00, 1, 191.62, 200.00, 5, 1252.36, '0115923210'),
(181, '2022-07-14', '19:22:34', 110, 75.00, 1, 107.25, 110.00, 5, 1145.11, '0112785021'),
(182, '2022-07-14', '19:23:17', 102, 1.00, 1, 50.00, 55.00, 2, 1521.38, 'حكاية 50'),
(183, '2022-07-14', '19:24:03', 39, 10.00, 1, 10.00, 10.00, 1, 197.46, 'كرت  _ 10'),
(184, '2022-07-14', '19:24:04', 39, 10.00, 1, 10.00, 10.00, 1, 187.46, 'كرت  _ 10'),
(185, '2022-07-14', '19:37:36', 76, 10.00, 1, 10.00, 10.00, 2, 1511.38, 'كرت  _ 10'),
(186, '2022-07-14', '21:03:36', 102, 1.00, 1, 50.00, 50.00, 2, 1461.38, 'حكاية 50'),
(187, '2022-07-14', '21:03:53', 110, 50.00, 1, 71.50, 75.00, 2, 1389.88, '01159691822'),
(188, '2022-07-14', '21:19:40', 110, 150.00, 1, 214.50, 225.00, 5, 930.61, '011'),
(189, '2022-07-14', '21:19:41', 79, 10.00, 1, 10.00, 10.00, 5, 920.61, 'كرت  _ 10'),
(190, '2022-07-14', '21:19:50', 110, 100.00, 1, 143.00, 150.00, 5, 777.61, '01103935385 '),
(191, '2022-07-14', '22:09:08', 114, 1.00, 1, 15.00, 16.00, 5, 762.61, 'كرت 15'),
(192, '2022-07-14', '22:10:07', 110, 84.00, 1, 120.83, 130.00, 5, 641.77, '011'),
(193, '2022-07-14', '22:12:29', 78, 10.00, 1, 10.00, 10.00, 4, 997.8, 'كرت  _ 10'),
(194, '2022-07-14', '22:16:45', 110, 50.00, 1, 71.50, 75.00, 2, 1318.38, ''),
(195, '2022-07-14', '22:32:38', 110, 50.00, 1, 71.50, 75.00, 2, 1246.88, '011'),
(196, '2022-07-14', '22:33:03', 110, 27.00, 1, 38.61, 43.00, 2, 1208.27, '01102'),
(199, '2022-07-14', '22:37:58', 110, 50.00, 1, 71.50, 75.00, 2, 1136.77, '01155997556'),
(200, '2022-07-14', '22:38:11', 110, 34.00, 1, 48.62, 50.00, 2, 1088.15, '01155997556'),
(201, '2022-07-14', '22:43:13', 110, 50.00, 1, 72.22, 75.00, 5, 569.56, '011555'),
(202, '2022-07-14', '23:49:38', 79, 5.00, 1, 50.00, 55.00, 4, 947.8, 'كرت  _ 10'),
(203, '2022-07-14', '23:52:57', 110, 100.00, 1, 143.00, 150.00, 5, 426.56, ''),
(204, '2022-07-14', '23:53:08', 79, 7.00, 1, 70.00, 77.00, 5, 356.56, 'كرت  _ 10'),
(205, '2022-07-14', '23:55:18', 96, 1535.00, 1, 1535.70, 1550.00, 2, 547.45, ''),
(206, '2022-07-14', '23:56:56', 78, 10.00, 1, 10.00, 10.00, 4, 937.8, 'كرت  _ 10'),
(207, '2022-07-14', '23:56:57', 78, 10.00, 1, 10.00, 10.00, 4, 927.8, 'كرت  _ 10'),
(208, '2022-07-14', '23:57:01', 78, 10.00, 1, 10.00, 10.00, 4, 917.8, 'كرت  _ 10'),
(209, '2022-07-14', '23:57:04', 78, 10.00, 1, 10.00, 10.00, 4, 907.8, 'كرت  _ 10'),
(210, '2022-07-14', '23:57:06', 78, 10.00, 1, 10.00, 10.00, 4, 897.8, 'كرت  _ 10'),
(211, '2022-07-14', '23:57:07', 78, 10.00, 1, 10.00, 10.00, 4, 887.8, 'كرت  _ 10'),
(212, '2022-07-15', '01:18:07', 79, 10.00, 1, 10.00, 10.00, 5, 346.56, 'كرت  _ 10'),
(213, '2022-07-15', '01:18:10', 79, 10.00, 1, 10.00, 10.00, 5, 336.56, 'كرت  _ 10'),
(214, '2022-07-15', '01:19:27', 110, 134.00, 1, 191.62, 200.00, 2, 355.83, '01112860121'),
(215, '2022-07-15', '03:24:44', 114, 2.00, 1, 30.00, 32.00, 5, 306.56, 'كرت 15'),
(216, '2022-07-15', '03:24:51', 79, 10.00, 1, 10.00, 10.00, 5, 296.56, 'كرت  _ 10'),
(217, '2022-07-15', '03:25:01', 79, 10.00, 1, 10.00, 10.00, 5, 286.56, 'كرت  _ 10');

-- --------------------------------------------------------

--
-- Table structure for table `masary_sell`
--

CREATE TABLE `masary_sell` (
  `id_masary_sell` int(11) NOT NULL,
  `date_masary_sell` date DEFAULT curdate(),
  `time_masary_sell` time DEFAULT curtime(),
  `value_masary_sell` double(10,2) DEFAULT 0.00,
  `amount_masary_sell` double(10,2) DEFAULT NULL,
  `id_recharge_type` int(11) DEFAULT NULL,
  `id_Suppliers` bigint(20) DEFAULT NULL,
  `id_VF_cash` int(11) DEFAULT NULL,
  `id_pos` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masary_sell`
--

INSERT INTO `masary_sell` (`id_masary_sell`, `date_masary_sell`, `time_masary_sell`, `value_masary_sell`, `amount_masary_sell`, `id_recharge_type`, `id_Suppliers`, `id_VF_cash`, `id_pos`) VALUES
(1, '2022-07-11', '17:27:41', 3995.00, 3000.00, 2, 4, NULL, 2),
(2, '2022-07-11', '17:31:23', 561.00, 2000.00, 2, 5, NULL, 4),
(3, '2022-07-11', '19:11:57', 2029.00, 24000.00, 2, 3, NULL, 1),
(4, '2022-07-12', '12:01:25', 503.00, 500.00, 2, 5, NULL, 4),
(5, '2022-07-12', '20:35:21', 900.00, 1000.00, 2, 7, NULL, 5),
(6, '2022-07-13', '14:18:53', 1000.00, 1000.00, 2, 3, NULL, 1),
(7, '2022-07-13', '21:49:49', 1992.00, 2000.00, 2, 7, NULL, 5),
(8, '2022-07-14', '16:25:02', 1990.00, 2000.00, 2, 4, NULL, 2),
(9, '2022-07-14', '21:19:01', 1000.00, 1000.00, 2, 5, NULL, 4),
(10, '2022-07-14', '23:54:06', 995.00, 1000.00, 2, 4, NULL, 2);

--
-- Triggers `masary_sell`
--
DELIMITER $$
CREATE TRIGGER `upDate_balance` AFTER INSERT ON `masary_sell` FOR EACH ROW BEGIN
    DECLARE
        oldbalance DOUBLE ; DECLARE newbalance DOUBLE ;
        -- set old balance
    SELECT
        masary_pay.balance
    INTO @oldbalance
FROM
    masary_pay
WHERE
    masary_pay.id_masary_pay = (SELECT MAX(mpay.id_masary_pay) FROM masary_pay AS mpay)  ;
    -- set new balance
    IF @oldbalance != NULL THEN
UPDATE
    masary_pay
SET
    masary_pay.balance = @oldbalance +(
    SELECT
        masary_sell.value_masary_sell
    FROM
        masary_sell AS sell
    WHERE
        sell.id_masary_sell = (SELECT MAX(sell2.id_masary_sell) FROM masary_sell AS sell2)
) ;
END IF ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `notifcation`
--

CREATE TABLE `notifcation` (
  `id_notifcation` int(11) NOT NULL,
  `date_notifcation` date DEFAULT NULL,
  `note` varchar(512) DEFAULT NULL,
  `isRead` tinyint(1) NOT NULL DEFAULT 0,
  `id_Solf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `paydebt`
--

CREATE TABLE `paydebt` (
  `id_paydebt` int(11) NOT NULL,
  `date_paydebt` date DEFAULT curdate(),
  `time_paydebt` time DEFAULT curtime(),
  `id_Solf` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `datePay_Solf` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paydebt`
--

INSERT INTO `paydebt` (`id_paydebt`, `date_paydebt`, `time_paydebt`, `id_Solf`, `amount`, `datePay_Solf`) VALUES
(7, '2022-07-14', '16:23:45', 1, 3000.00, '2022-07-14'),
(8, '2022-07-14', '17:06:20', 1, 15000.00, '2022-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `paymentreceipt`
--

CREATE TABLE `paymentreceipt` (
  `id_PaymentReceipt` bigint(255) NOT NULL,
  `date_PaymentReceipt` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `id_Suppliers` bigint(255) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paymentreceipt`
--

INSERT INTO `paymentreceipt` (`id_PaymentReceipt`, `date_PaymentReceipt`, `amount`, `id_Suppliers`, `isActive`) VALUES
(1, '2022-07-11', 2000.00, 5, 1),
(2, '2022-07-12', 30300.00, 8, 1),
(3, '2022-07-13', 500.00, 5, 1),
(4, '2022-07-14', 520.00, 2, 1),
(5, '2022-07-14', 1000.00, 7, 1),
(6, '2022-07-15', 20000.00, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phone_numbers`
--

CREATE TABLE `phone_numbers` (
  `id_phone_number` int(11) NOT NULL,
  `numbers` varchar(14) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_numbers`
--

INSERT INTO `phone_numbers` (`id_phone_number`, `numbers`, `name`) VALUES
(1, '01151018778', NULL),
(2, '01027724864', NULL),
(4, '01145914130', NULL),
(5, '01103935385', NULL),
(6, '01141845954', NULL),
(7, '01105919500', NULL),
(8, '01141156734', NULL),
(9, '01553072625', NULL),
(10, '01152837810', NULL),
(12, '01030506916', NULL),
(13, '01007983995', NULL),
(18, '0972297410', NULL),
(19, '01153161690', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pos`
--

CREATE TABLE `pos` (
  `id_pos` int(11) NOT NULL,
  `name_pos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos`
--

INSERT INTO `pos` (`id_pos`, `name_pos`) VALUES
(1, 'مصاري'),
(2, 'Bee'),
(3, 'Fawry'),
(4, 'OPay'),
(5, 'أمان');

-- --------------------------------------------------------

--
-- Table structure for table `priselist`
--

CREATE TABLE `priselist` (
  `id_priceList` bigint(255) NOT NULL,
  `last_edit` date DEFAULT NULL,
  `purchase_price_low` double(10,2) DEFAULT NULL,
  `purchase_price_high` double(10,2) DEFAULT NULL,
  `sale_price_low` double(10,2) DEFAULT NULL,
  `sale_price_high` double(10,2) DEFAULT NULL,
  `id_items` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `priselist`
--

INSERT INTO `priselist` (`id_priceList`, `last_edit`, `purchase_price_low`, `purchase_price_high`, `sale_price_low`, `sale_price_high`, `id_items`) VALUES
(2, '2022-06-19', 30.00, 30.00, 75.00, 75.00, 6975488921007),
(3, '2022-06-19', 38.00, 38.00, 80.00, 80.00, 6875422190370),
(4, '2022-06-19', 39.00, 39.00, 80.00, 80.00, 6949810520961),
(5, '2022-06-19', 37.00, 37.00, 75.00, 75.00, 6949810520954),
(7, '2022-06-19', 25.00, 25.00, 50.00, 50.00, 6949810504466),
(8, '2022-06-19', 18.00, 18.00, 35.00, 35.00, 6973224871319),
(9, '2022-06-19', 18.00, 18.00, 35.00, 35.00, 6973224870053),
(10, '2022-06-19', 17.00, 17.00, 30.00, 30.00, 6956116774684),
(11, '2022-06-19', 22.00, 22.00, 40.00, 40.00, 2018014204206),
(12, '2022-06-19', 11.00, 11.00, 25.00, 25.00, 6949810502219),
(13, '2022-06-19', 15.00, 15.00, 30.00, 30.00, 6970462516446),
(14, '2022-06-19', 20.00, 20.00, 40.00, 40.00, 6921042107615),
(15, '2022-06-19', 12.00, 12.00, 30.00, 30.00, 6921042111322),
(16, '2022-06-19', 19.00, 19.00, 40.00, 40.00, 6944561153543),
(17, '2022-06-19', 17.00, 17.00, 35.00, 35.00, 9988854278909),
(18, '2022-06-19', 30.00, 30.00, 65.00, 65.00, 6922252566452),
(19, '2022-06-19', 35.00, 35.00, 70.00, 70.00, 6922154678772),
(20, '2022-06-19', 35.00, 35.00, 75.00, 75.00, 6905112458258),
(21, '2022-06-19', 22.00, 22.00, 50.00, 50.00, 6973224870381),
(22, '2022-06-19', 22.00, 22.00, 45.00, 45.00, 6973224870305),
(23, '2022-06-19', 15.00, 15.00, 35.00, 35.00, 6933138622018),
(24, '2022-06-19', 15.00, 15.00, 30.00, 30.00, 6965468450061),
(25, '2022-06-19', 18.00, 18.00, 45.00, 45.00, 6999881512181),
(26, '2022-06-19', 14.00, 14.00, 35.00, 35.00, 8434350001004),
(27, '2022-06-19', 21.50, 21.50, 40.00, 40.00, 7720190427021),
(28, '2022-06-19', 11.00, 11.00, 30.00, 30.00, 4414136520176),
(29, '2022-06-19', 11.00, 11.00, 30.00, 30.00, 4416336520178),
(30, '2022-06-19', 40.00, 40.00, 75.00, 75.00, 6971410555944),
(31, '2022-06-19', 50.00, 50.00, 100.00, 100.00, 6949810510177),
(32, '2022-07-13', 20.00, 20.00, 35.00, 35.00, 5692492560695),
(33, '2022-07-14', 55.00, 55.00, 85.00, 85.00, 6973965931846),
(34, '2022-07-14', 30.00, 30.00, 45.00, 45.00, 6954851289500),
(35, '2022-07-14', 25.00, 25.00, 40.00, 40.00, 6941027608562),
(36, '2022-07-15', 15.00, 15.00, 25.00, 25.00, 6815648454269),
(37, '2022-07-15', 20.00, 20.00, 35.00, 35.00, 6815648455426),
(38, '2022-07-15', 15.00, 15.00, 25.00, 25.00, 4952605064023);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseinvoice`
--

CREATE TABLE `purchaseinvoice` (
  `id_purchaseInvoice` bigint(255) NOT NULL,
  `date_purchaseInvoice` date DEFAULT NULL,
  `type_purchaseInvoic` varchar(512) DEFAULT NULL,
  `id_Suppliers` bigint(255) DEFAULT NULL,
  `totalAmount` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `amountCash` double(10,2) DEFAULT NULL,
  `amountLater` double(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchaseinvoice`
--

INSERT INTO `purchaseinvoice` (`id_purchaseInvoice`, `date_purchaseInvoice`, `type_purchaseInvoic`, `id_Suppliers`, `totalAmount`, `discount`, `amountCash`, `amountLater`, `note`, `isActive`) VALUES
(1, '2022-07-14', 'آجل', 2, 1100.00, 0.00, 0.00, 1100.00, 'فاتورة مشتريات رقم  1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id_Receipt` bigint(255) NOT NULL,
  `date_Receipt` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `id_client` bigint(255) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id_Receipt`, `date_Receipt`, `amount`, `id_client`, `isActive`) VALUES
(1, '2022-07-11', 100.00, 2, 1),
(2, '2022-07-11', 335.00, 5, 1),
(3, '2022-07-12', 1500.00, 8, 1),
(4, '2022-07-13', 150.00, 6, 1),
(5, '2022-07-13', 35.00, 4, 1),
(6, '2022-07-14', -200.00, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `recharge_type`
--

CREATE TABLE `recharge_type` (
  `id_recharge_type` int(11) NOT NULL,
  `name_recharge_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recharge_type`
--

INSERT INTO `recharge_type` (`id_recharge_type`, `name_recharge_type`) VALUES
(1, 'نقدي'),
(2, 'مندوب'),
(3, 'خط كاش');

-- --------------------------------------------------------

--
-- Table structure for table `salesinvoic`
--

CREATE TABLE `salesinvoic` (
  `id_salesInvoic` bigint(255) NOT NULL,
  `date_salesInvoic` date DEFAULT NULL,
  `type_salesInvoic` varchar(512) DEFAULT NULL,
  `id_client` bigint(255) DEFAULT NULL,
  `totalAmount` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `amountCash` double(10,2) DEFAULT NULL,
  `amountLater` double(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salesinvoic`
--

INSERT INTO `salesinvoic` (`id_salesInvoic`, `date_salesInvoic`, `type_salesInvoic`, `id_client`, `totalAmount`, `discount`, `amountCash`, `amountLater`, `note`, `isActive`) VALUES
(1, '2022-07-12', 'كاش', 1, 60.00, 0.00, 60.00, 0.00, 'فاتورة مبيعات نقدية1', 1),
(2, '2022-07-12', 'كاش', 1, 40.00, 0.00, 40.00, 0.00, 'فاتورة مبيعات نقدية2', 1),
(3, '2022-07-12', 'كاش', 1, 40.00, 0.00, 40.00, 0.00, 'فاتورة مبيعات نقدية3', 1),
(4, '2022-07-12', 'كاش', 1, 70.00, 0.00, 70.00, 0.00, 'فاتورة مبيعات نقدية4', 1),
(5, '2022-07-12', 'كاش', 1, 75.00, 0.00, 75.00, 0.00, 'فاتورة مبيعات نقدية5', 1),
(6, '2022-07-12', 'كاش', 1, 70.00, 0.00, 70.00, 0.00, 'فاتورة مبيعات نقدية6', 1),
(7, '2022-07-13', 'كاش', 1, 65.00, 0.00, 65.00, 0.00, 'فاتورة مبيعات نقدية7', 1),
(8, '2022-07-13', 'كاش', 1, 40.00, 0.00, 40.00, 0.00, 'فاتورة مبيعات نقدية8', 1),
(9, '2022-07-13', 'كاش', 1, 25.00, 0.00, 25.00, 0.00, 'فاتورة مبيعات نقدية9', 1),
(10, '2022-07-13', 'كاش', 1, 30.00, 0.00, 30.00, 0.00, 'فاتورة مبيعات نقدية10', 1),
(11, '2022-07-13', 'كاش', 1, 25.00, 0.00, 25.00, 0.00, 'فاتورة مبيعات نقدية11', 1),
(12, '2022-07-13', 'كاش', 1, 30.00, 0.00, 30.00, 0.00, 'فاتورة مبيعات نقدية12', 1),
(13, '2022-07-13', 'كاش', 1, 50.00, 0.00, 50.00, 0.00, 'فاتورة مبيعات نقدية13', 1),
(15, '2022-07-13', 'كاش', 1, 35.00, 0.00, 35.00, 0.00, 'فاتورة مبيعات نقدية15', 1),
(16, '2022-07-14', 'كاش', 1, 35.00, 0.00, 35.00, 0.00, 'فاتورة مبيعات نقدية16', 1),
(17, '2022-07-14', 'كاش', 1, 75.00, 0.00, 75.00, 0.00, 'فاتورة مبيعات نقدية17', 1),
(18, '2022-07-14', 'كاش', 1, 85.00, 0.00, 85.00, 0.00, 'فاتورة مبيعات نقدية18', 1),
(19, '2022-07-14', 'كاش', 1, 35.00, 0.00, 35.00, 0.00, 'فاتورة مبيعات نقدية19', 1),
(20, '2022-07-14', 'كاش', 1, 30.00, 0.00, 30.00, 0.00, 'فاتورة مبيعات نقدية20', 1),
(21, '2022-07-14', 'كاش', 1, 75.00, 0.00, 75.00, 0.00, 'فاتورة مبيعات نقدية21', 1),
(22, '2022-07-15', 'كاش', 1, 40.00, 0.00, 40.00, 0.00, 'فاتورة مبيعات نقدية22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `send_receive`
--

CREATE TABLE `send_receive` (
  `id_Send_Receive` int(11) NOT NULL,
  `date_Send_Receive` date NOT NULL DEFAULT curdate(),
  `time_Send_Receive` time NOT NULL DEFAULT curtime(),
  `type_Send_Receive` enum('Send','Receive') DEFAULT NULL,
  `value_Send_Receive` double(10,2) NOT NULL,
  `amount_Send_Receive` double(10,2) NOT NULL,
  `id_VF_cash` int(11) DEFAULT NULL,
  `Number_client` varchar(512) DEFAULT NULL,
  `id_client` bigint(255) DEFAULT 1,
  `id_Suppliers` bigint(255) DEFAULT 1,
  `take_money` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `send_receive`
--

INSERT INTO `send_receive` (`id_Send_Receive`, `date_Send_Receive`, `time_Send_Receive`, `type_Send_Receive`, `value_Send_Receive`, `amount_Send_Receive`, `id_VF_cash`, `Number_client`, `id_client`, `id_Suppliers`, `take_money`) VALUES
(2, '2022-07-12', '20:24:27', 'Receive', 500.00, 490.00, 2, '', 1, 1, 1),
(3, '2022-07-12', '20:55:23', 'Send', 800.00, 810.00, 2, '01050054125', 1, 1, 1),
(4, '2022-07-13', '20:16:18', 'Receive', 30000.00, 30300.00, 3, NULL, 1, 8, 1),
(5, '2022-07-13', '20:17:43', 'Send', 2821.00, 2850.00, 3, '01032509970', 1, 1, 1),
(6, '2022-07-13', '20:18:42', 'Send', 5010.00, 5050.00, 3, '01226758330', 1, 1, 1),
(7, '2022-07-13', '20:54:40', 'Send', 4001.00, 4000.00, 3, '010', 1, 1, 1),
(8, '2022-07-13', '22:49:14', 'Receive', 1020.00, 1000.00, 2, '', 1, 1, 1),
(9, '2022-07-14', '00:10:22', 'Send', 3001.00, 3000.00, 3, '0100720', 1, 1, 1),
(11, '2022-07-14', '16:47:24', 'Send', 501.00, 505.00, 3, '01005652354', 1, 1, 1),
(12, '2022-07-14', '16:48:59', 'Send', 2801.00, 2830.00, 3, '01007179435', 1, 1, 1),
(13, '2022-07-14', '16:49:56', 'Send', 201.00, 200.00, 3, '010', 1, 1, 1),
(14, '2022-07-14', '17:00:18', 'Receive', 250.00, 245.00, 2, '', 1, 1, 1),
(15, '2022-07-14', '17:00:49', 'Send', 502.50, 510.00, 2, '01127751968', 1, 1, 1),
(18, '2022-07-14', '19:01:14', 'Send', 1001.00, 1010.00, 3, '01033905970', 1, 1, 1),
(19, '2022-07-14', '19:01:41', 'Send', 301.00, 305.00, 3, '01094953800', 1, 1, 1),
(20, '2022-07-14', '19:03:14', 'Send', 1981.00, 2000.00, 3, '01018284576', 1, 1, 1),
(21, '2022-07-14', '21:04:32', 'Send', 2001.00, 2020.00, 3, '01007983995 ', 1, 1, 1),
(22, '2022-07-14', '21:07:08', 'Receive', 10000.00, 10000.00, 3, NULL, 1, 7, 1),
(23, '2022-07-14', '22:02:51', 'Send', 767.00, 750.00, 2, '01007983995 ', 1, 1, 1),
(24, '2022-07-14', '22:22:38', 'Send', 9401.00, 9450.00, 3, '01027699087', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `solf`
--

CREATE TABLE `solf` (
  `id_Solf` int(11) NOT NULL,
  `date_Solf` date DEFAULT curdate(),
  `time_Solf` time DEFAULT curtime(),
  `datePay_Solf` date NOT NULL,
  `amount_Solf` double(10,2) NOT NULL,
  `name_Solf` varchar(255) NOT NULL,
  `note_Solf` varchar(512) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `solf`
--

INSERT INTO `solf` (`id_Solf`, `date_Solf`, `time_Solf`, `datePay_Solf`, `amount_Solf`, `name_Solf`, `note_Solf`, `isActive`) VALUES
(1, '2022-07-12', '22:26:51', '2022-07-13', 0.00, 'الشيخ علاء', 'سداد احمد بكري', 0);

--
-- Triggers `solf`
--
DELIMITER $$
CREATE TRIGGER `addNotifcationSolfa` AFTER INSERT ON `solf` FOR EACH ROW INSERT INTO `notifcation` ( `date_notifcation`, `note` , `id_Solf`) VALUES (
NEW.datePay_Solf , CONCAT( 'موعد استحقاق مبلغ' ,'  ', NEW.amount_Solf , ' ' , NEW.name_Solf 
), NEW.id_Solf)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id_Suppliers` bigint(255) NOT NULL,
  `name_Suppliers` varchar(512) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `idNational` varchar(14) DEFAULT NULL,
  `firstBalance` double(10,2) DEFAULT NULL,
  `id_supplier_type` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id_Suppliers`, `name_Suppliers`, `phone`, `address`, `idNational`, `firstBalance`, `id_supplier_type`, `isActive`) VALUES
(1, 'مورد نقدي', NULL, NULL, NULL, NULL, 0, 1),
(2, 'صالح - هاي كوليتي', '01114040701', 'دراو', '', 520.00, 1, 1),
(3, 'نور العزالي', '01128331345', 'ادفو', '', 0.00, 4, 1),
(4, 'ريمون', '01211158058', 'كوم امبو', NULL, 0.00, 5, 1),
(5, 'عاصم', '01141182640', 'ادفو', NULL, 0.00, 6, 1),
(6, 'محمد كرار', '01146212212', 'ادفو', '', 0.00, 3, 1),
(7, 'ياسر عطيتو', '0117919095', '', '', 0.00, 2, 1),
(8, 'احمد بكري', '', '', '', 30300.00, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliersaccount`
--

CREATE TABLE `suppliersaccount` (
  `id_supplliersAccount` bigint(255) NOT NULL,
  `date_suppliersAccount` date DEFAULT curdate(),
  `Debit` double(10,2) DEFAULT NULL,
  `Creditor` double(10,2) DEFAULT NULL,
  `id_Suppliers` bigint(255) DEFAULT NULL,
  `id_purchaseInvoice` bigint(255) DEFAULT NULL,
  `id_paymentReceipt` bigint(255) DEFAULT NULL,
  `id_masary_sell` int(11) DEFAULT NULL,
  `id_Send_Receive` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliersaccount`
--

INSERT INTO `suppliersaccount` (`id_supplliersAccount`, `date_suppliersAccount`, `Debit`, `Creditor`, `id_Suppliers`, `id_purchaseInvoice`, `id_paymentReceipt`, `id_masary_sell`, `id_Send_Receive`, `note`, `isActive`) VALUES
(1, NULL, NULL, 3000.00, 4, NULL, NULL, 1, NULL, 'شحن ماكينةBee', 1),
(2, NULL, NULL, 2000.00, 5, NULL, NULL, 2, NULL, 'شحن ماكينةأمان', 1),
(3, NULL, NULL, 24000.00, 3, NULL, NULL, 3, NULL, 'شحن ماكينةمصاري', 1),
(6, '2022-07-11', 2000.00, NULL, 5, NULL, 1, NULL, NULL, 'ايصال دفع رقم 1', 1),
(7, NULL, NULL, 500.00, 5, NULL, NULL, 4, NULL, 'شحن ماكينةOPay', 1),
(8, NULL, NULL, 1000.00, 7, NULL, NULL, 5, NULL, 'شحن ماكينةأمان', 1),
(10, '2022-07-12', 30300.00, NULL, 8, NULL, 2, NULL, NULL, 'ايصال دفع رقم 2', 1),
(11, NULL, NULL, 1000.00, 3, NULL, NULL, 6, NULL, 'شحن ماكينةمصاري', 1),
(12, '2022-07-13', 500.00, NULL, 5, NULL, 3, NULL, NULL, 'ايصال دفع رقم 3', 1),
(13, '2022-07-13', NULL, 30300.00, 8, NULL, NULL, NULL, 4, 'شحن محفظة 010-91527705', 1),
(14, '2022-07-13', NULL, 2000.00, 7, NULL, NULL, 7, NULL, 'شحن ماكينةأمان', 1),
(15, '2022-07-14', NULL, 2000.00, 4, NULL, NULL, 8, NULL, 'شحن ماكينةBee', 1),
(16, '2022-07-14', NULL, 10000.00, 7, NULL, NULL, NULL, 22, 'شحن محفظة 010-91527705', 1),
(17, '2022-07-14', 520.00, NULL, 2, NULL, 4, NULL, NULL, 'ايصال دفع رقم 4', 1),
(18, '2022-07-14', NULL, 1100.00, 2, 1, NULL, NULL, NULL, 'فاتورة مشتريات رقم  1', 1),
(19, '2022-07-14', NULL, 1000.00, 5, NULL, NULL, 9, NULL, 'شحن ماكينةOPay', 1),
(20, '2022-07-14', 1000.00, NULL, 7, NULL, 5, NULL, NULL, 'ايصال دفع رقم 5 _ تحويل كاش 21', 1),
(21, '2022-07-14', NULL, 1000.00, 4, NULL, NULL, 10, NULL, 'شحن ماكينةBee', 1),
(22, '2022-07-15', 20000.00, NULL, 3, NULL, 6, NULL, NULL, 'ايصال دفع رقم 6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_type`
--

CREATE TABLE `supplier_type` (
  `id_supplier_type` int(11) NOT NULL,
  `name_supplier_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_type`
--

INSERT INTO `supplier_type` (`id_supplier_type`, `name_supplier_type`) VALUES
(0, NULL),
(1, 'بضائع'),
(8, 'فودافون كاش'),
(5, 'مندوب Bee'),
(6, 'مندوب Opay'),
(2, 'مندوب امان'),
(3, 'مندوب فوري'),
(4, 'مندوب مصاري');

-- --------------------------------------------------------

--
-- Stand-in structure for view `totalcash`
-- (See below for the actual view)
--
CREATE TABLE `totalcash` (
`id` int(11)
,`Number` varchar(12)
,`FirstBalance` double(10,2)
,`deposit` double(19,2)
,`Withdraw` double(19,2)
,`Send` double(19,2)
,`Receive` double(19,2)
,`NowBalance` double(19,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` bigint(255) NOT NULL,
  `low` varchar(512) DEFAULT NULL,
  `high` varchar(512) DEFAULT NULL,
  `val` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `low`, `high`, `val`) VALUES
(1, 'قطعة', 'قطعة', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `unititems`
-- (See below for the actual view)
--
CREATE TABLE `unititems` (
`id_items` bigint(255)
,`name_items` varchar(255)
,`firstbalance` bigint(255)
,`low` varchar(512)
,`high` varchar(512)
,`val` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `passwod` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `username`, `passwod`) VALUES
(0, 'applecationProgramer', 1127333021),
(2, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `utility_masary`
--

CREATE TABLE `utility_masary` (
  `id_utility_masary` int(11) NOT NULL,
  `name_utility_masary` varchar(512) DEFAULT NULL,
  `note_utility` varchar(512) DEFAULT NULL,
  `cost_by_perse` double(10,2) DEFAULT NULL,
  `price` double NOT NULL,
  `id_pos` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utility_masary`
--

INSERT INTO `utility_masary` (`id_utility_masary`, `name_utility_masary`, `note_utility`, `cost_by_perse`, `price`, `id_pos`) VALUES
(20, 'كروت اورنج', 'LE 2.50', 2.50, 3, 1),
(21, 'كروت اورنج', 'LE 5', 5.00, 6, 1),
(22, 'كروت اورنج', 'LE 7', 7.00, 8, 1),
(23, 'كروت اورنج', 'LE 9', 9.00, 10, 1),
(24, 'كروت اورنج', 'LE 10', 10.00, 11, 1),
(25, 'كروت اورنج', 'LE 13.5', 13.50, 15, 1),
(26, 'كروت اورنج', 'LE 15', 15.00, 16, 1),
(27, 'كروت اورنج', 'LE 18.5', 18.50, 20, 1),
(28, 'كروت اورنج', 'LE 20', 20.00, 22, 1),
(29, 'كروت اورنج', 'LE 25', 25.00, 26, 1),
(30, 'كروت اورنج', 'LE 28', 28.00, 30, 1),
(31, 'كروت اورنج', 'LE 35', 35.00, 37, 1),
(32, 'كروت اورنج', 'LE 42', 42.00, 45, 1),
(33, 'كروت اورنج', 'LE 50', 50.00, 52, 1),
(34, 'كروت اورنج', 'LE 100', 100.00, 105, 1),
(35, 'كروت اتصالات', '2.5', 2.50, 3, 1),
(36, 'كروت اتصالات', '5', 5.00, 6, 1),
(37, 'كروت اتصالات', '7', 7.00, 8, 1),
(38, 'كروت اتصالات', '9', 9.00, 10, 1),
(39, 'كروت اتصالات', 'كرت  _ 10', 10.00, 11, 1),
(40, 'كروت اتصالات', '13.5', 13.50, 15, 1),
(41, 'كروت اتصالات', '15', 15.00, 16, 1),
(42, 'كروت اتصالات', '25', 25.00, 26, 1),
(43, 'كروت اتصالات', '30', 30.00, 32, 1),
(44, 'كروت اتصالات', '50', 50.00, 52, 1),
(45, 'كروت اتصالات', '100', 100.00, 105, 1),
(46, 'كروت فودافون', 'فكة 2.5', 2.50, 3, 1),
(47, 'كروت فودافون', 'فكة5', 5.00, 6, 1),
(48, 'كروت فودافون', 'فكة 9', 9.00, 10, 1),
(49, 'كروت فودافون', 'فكة 10', 10.00, 11, 1),
(50, 'كروت فودافون', 'فكة 13.5', 13.50, 15, 1),
(51, 'كروت فودافون', 'فكة 15', 15.00, 16, 1),
(52, 'كروت فودافون', 'كارت 10', 10.00, 11, 1),
(53, 'كروت فودافون', 'كارت 15', 15.00, 16, 1),
(54, 'كروت فودافون', 'كارت 25', 25.00, 26, 1),
(55, 'كروت فودافون', 'كارت 50', 50.00, 52, 1),
(56, 'كروت فودافون', 'كارت 100', 100.00, 105, 1),
(57, 'كروت WE', '5 كارت', 5.00, 6, 1),
(58, 'كروت WE', '7 كارت', 7.00, 8, 1),
(59, 'كروت WE', '9 كارت', 9.00, 10, 1),
(60, 'كروت WE', '10 كارت', 10.00, 11, 1),
(61, 'كروت WE', '15 كارت', 15.00, 16, 1),
(62, 'كروت WE', '25 كارت', 25.00, 26, 1),
(63, 'كروت WE', '30 كارت', 30.00, 32, 1),
(64, 'كروت WE', '40 كارت', 40.00, 42, 1),
(65, 'كروت WE', '50 كارت', 50.00, 52, 1),
(66, 'كروت WE', '60 كارت', 60.00, 65, 1),
(67, 'كروت WE', '75 كارت', 75.00, 80, 1),
(69, 'كروت WE', '100 كارت', 100.00, 105, 1),
(70, 'كروت WE', '150 كارت', 150.00, 155, 1),
(71, 'اتصالات حكاية', 'حكاية 25', 25.00, 30, 1),
(72, 'شحن', 'شحن اتصالات', 1.43, 1.5, 1),
(73, 'شحن', 'شحن اتصالات', 1.43, 1.5, 2),
(74, 'شحن', 'شحن اورنج', 1.43, 1.5, 2),
(75, 'شحن', 'شحن وي', 1.00, 1, 2),
(76, 'كروت اتصالات', 'كرت  _ 10', 10.00, 11, 2),
(77, 'كروت اتصالات', 'كرت  _ 10', 10.00, 11, 3),
(78, 'كروت اتصالات', 'كرت  _ 10', 10.00, 11, 4),
(79, 'كروت اتصالات', 'كرت  _ 10', 10.00, 11, 5),
(80, 'فودافون كاش', 'ايداع', 1.00, 1, 1),
(81, 'فودافون كاش', 'ايداع', 1.00, 1, 2),
(82, 'فودافون كاش', 'ايداع', 1.00, 1, 3),
(83, 'فودافون كاش', 'ايداع', 1.00, 1, 5),
(84, 'فودافون كاش', 'سحب', 1.00, 0.01, 1),
(85, 'فودافون كاش', 'سحب', 1.00, 0.01, 2),
(86, 'فودافون كاش', 'سحب', 1.00, 0.01, 3),
(87, 'فودافون كاش', 'سحب', 1.00, 0.01, 5),
(88, 'شحن', 'شحن فودافون', 1.43, 1.5, 1),
(89, 'شحن', 'شحن اورنج', 1.43, 1.5, 1),
(90, 'شحن', 'شحن WE', 1.00, 1, 1),
(91, 'شحن', 'شحن فودافون', 1.43, 1.5, 2),
(93, 'اتصالات حكاية', 'حكاية _ 35', 1.00, 1, 2),
(94, 'اتصالات حكاية', 'حكاية _ 25', 1.00, 1, 2),
(95, 'شحن', 'وي انترنت منزلي', 1.00, 1, 2),
(96, 'سداد قروض', 'قرض تمويلي', 1.00, 1, 2),
(97, 'كروت WE', 'كرت 15', 15.00, 15, 4),
(98, 'اتصالات حكاية', 'حكاية 50', 1.00, 1, 2),
(99, 'اتصالات حكاية', 'حكاية 65', 65.00, 65, 1),
(101, 'فواتير النت و الارضي', 'فاتورة TEDATA', 0.00, 0, 1),
(102, 'اتصالات حكاية', 'حكاية 50', 50.00, 55, 1),
(103, 'فواتير النت و الارضي', 'فاتورة النت وي', 0.00, 0, 2),
(104, 'مرافق عامة', 'شحن كروت الكهرباء', 1.00, 1.05, 1),
(105, 'مرافق عامة', 'شحن كروت الكهرباء', 1.00, 1.05, 5),
(106, 'كروت اتصالات', 'كرت 100', 100.00, 105, 4),
(107, 'كروت اتصالات', 'كرت 5', 5.00, 5, 4),
(108, 'اتصالات حكاية', 'حكاية 25', 25.00, 30, 4),
(109, 'كروت فودافون', 'كرت 10', 10.00, 10, 5),
(110, 'شحن', 'شحن اتصالات', 1.43, 1.5, 5),
(111, 'كروت WE', 'كرت 30', 30.00, 30, 5),
(112, 'اتصالات حكاية', 'حكاية 35', 35.00, 40, 1),
(113, 'فواتير', 'فواتير اورنج', 0.00, 0, 2),
(114, 'كروت اتصالات', 'كرت 15', 15.00, 16, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vf_cash`
--

CREATE TABLE `vf_cash` (
  `id_VF_cash` int(11) NOT NULL,
  `number_VF_cash` varchar(12) DEFAULT NULL,
  `name_owner` varchar(255) NOT NULL,
  `id_international` varchar(14) NOT NULL,
  `sim` varchar(22) DEFAULT NULL,
  `balance` double(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vf_cash`
--

INSERT INTO `vf_cash` (`id_VF_cash`, `number_VF_cash`, `name_owner`, `id_international`, `sim`, `balance`) VALUES
(1, '010-14864061', 'احمد بغدادي جاد عثمان', '29804222800197', '89200-22022-89364-0978', 0.00),
(2, '010-32064920', 'اشرف محمد احمد محمد', '28710022800194', '89200-22022-81925-1975', 0.00),
(3, '010-91527705', '', '              ', '89200-     -     -    ', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `vf_transaction_po`
--

CREATE TABLE `vf_transaction_po` (
  `id_transaction` int(11) NOT NULL,
  `date_transaction` date DEFAULT curdate(),
  `time_transaction` time DEFAULT curtime(),
  `type_transaction` enum('Deposit','Withdraw') DEFAULT NULL,
  `id_VF_cash` int(11) DEFAULT NULL,
  `id_pos` int(11) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `id_masary_pay` int(11) DEFAULT NULL,
  `id_masary_sell` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vf_transaction_po`
--

INSERT INTO `vf_transaction_po` (`id_transaction`, `date_transaction`, `time_transaction`, `type_transaction`, `id_VF_cash`, `id_pos`, `price`, `id_masary_pay`, `id_masary_sell`) VALUES
(2, '2022-07-12', '20:52:26', 'Deposit', 2, 5, 300.00, 69, NULL);

-- --------------------------------------------------------

--
-- Structure for view `calcbalanceitems`
--
DROP TABLE IF EXISTS `calcbalanceitems`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `calcbalanceitems`  AS  select `pur`.`id` AS `id`,`pur`.`name_items` AS `name_items`,ifnull(cast(`pur`.`firstbalance` as double(10,2)),0) AS `firstBalance`,ifnull(cast(`pur`.`qyt_pursh` as double(10,2)),0) AS `purchase`,ifnull(cast(`sal`.`qyt_sales` as double(10,2)),0) AS `Sales`,cast(ifnull(`pur`.`firstbalance`,0) + ifnull(`pur`.`qyt_pursh`,0) - ifnull(`sal`.`qyt_sales`,0) as double(10,2)) AS `nowBalance` from (`calcbalance_purchase` `pur` left join `calcbalance_sales` `sal` on(`sal`.`id` = `pur`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `calcbalance_purchase`
--
DROP TABLE IF EXISTS `calcbalance_purchase`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `calcbalance_purchase`  AS  select `items`.`id_items` AS `id`,`items`.`name_items` AS `name_items`,sum(case when `p`.`name_items` = (select `un`.`low` from `unititems` `un` where `un`.`id_items` = `p`.`id_items`) then `p`.`qyt` / (select `un`.`val` from `unititems` `un` where `un`.`id_items` = `p`.`id_items`) else `p`.`qyt` end) AS `qyt_pursh`,`items`.`firstbalance` AS `firstbalance` from (`items` join `itemsonpurchaseinvoice` `p` on(`p`.`id_items` = `items`.`id_items`)) group by `items`.`id_items` order by `items`.`id_items` ;

-- --------------------------------------------------------

--
-- Structure for view `calcbalance_sales`
--
DROP TABLE IF EXISTS `calcbalance_sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `calcbalance_sales`  AS  select `items`.`id_items` AS `id`,`items`.`name_items` AS `name_items`,sum(case when `i`.`name_unit` = (select `un`.`low` from `unititems` `un` where `un`.`id_items` = `i`.`id_items`) then `i`.`qyt` / (select `u`.`val` from `unititems` `u` where `u`.`id_items` = `i`.`id_items`) else `i`.`qyt` end) AS `qyt_sales`,`items`.`firstbalance` AS `firstbalance` from (`items` join `itemsonsalesinvoice` `i` on(`i`.`id_items` = `items`.`id_items`)) group by `items`.`id_items` order by `items`.`id_items` ;

-- --------------------------------------------------------

--
-- Structure for view `cashertwobalance`
--
DROP TABLE IF EXISTS `cashertwobalance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cashertwobalance`  AS  select sum(`c`.`Debit`) - sum(`c`.`Creditor`) AS `Balance` from `cashertwo` `c` ;

-- --------------------------------------------------------

--
-- Structure for view `debitandcreditorclient`
--
DROP TABLE IF EXISTS `debitandcreditorclient`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `debitandcreditorclient`  AS  select `ac`.`date_ClientAccount` AS `date_ClientAccount`,`ac`.`Debit` AS `Debit`,`ac`.`Creditor` AS `Creditor`,`ac`.`id_client` AS `id_client`,`c`.`name_client` AS `name_client`,`ac`.`id_salesInvoic` AS `id_salesInvoic`,`ac`.`id_Receipt` AS `id_Receipt`,`ac`.`note` AS `note` from (`clientaccount` `ac` join `client` `c` on(`ac`.`id_client` = `c`.`id_client`)) where `ac`.`isActive` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `debitandcreditorsupplier`
--
DROP TABLE IF EXISTS `debitandcreditorsupplier`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `debitandcreditorsupplier`  AS  select `ac`.`date_suppliersAccount` AS `date_suppliersAccount`,`ac`.`Debit` AS `Debit`,`ac`.`Creditor` AS `Creditor`,`ac`.`id_Suppliers` AS `id_Suppliers`,`sup`.`name_Suppliers` AS `name_Suppliers`,`ac`.`id_purchaseInvoice` AS `id_purchaseInvoice`,`ac`.`id_paymentReceipt` AS `id_paymentReceipt`,`ac`.`note` AS `note` from (`suppliersaccount` `ac` join `suppliers` `sup` on(`ac`.`id_Suppliers` = `sup`.`id_Suppliers`)) where `ac`.`isActive` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `totalcash`
--
DROP TABLE IF EXISTS `totalcash`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `totalcash`  AS  select `v`.`id_VF_cash` AS `id`,`v`.`number_VF_cash` AS `Number`,`v`.`balance` AS `FirstBalance`,(select ifnull(sum(`trans1`.`price`),0) from `vf_transaction_po` `trans1` where `v`.`id_VF_cash` = `trans1`.`id_VF_cash` and `trans1`.`type_transaction` = 'Deposit') AS `deposit`,(select ifnull(sum(`trans2`.`price`),0) from `vf_transaction_po` `trans2` where `v`.`id_VF_cash` = `trans2`.`id_VF_cash` and `trans2`.`type_transaction` = 'Withdraw') AS `Withdraw`,(select ifnull(sum(`sr1`.`value_Send_Receive`),0) from `send_receive` `sr1` where `v`.`id_VF_cash` = `sr1`.`id_VF_cash` and `sr1`.`type_Send_Receive` = 'Send') AS `Send`,(select ifnull(sum(`sr2`.`value_Send_Receive`),0) from `send_receive` `sr2` where `v`.`id_VF_cash` = `sr2`.`id_VF_cash` and `sr2`.`type_Send_Receive` = 'Receive') AS `Receive`,(select `v`.`balance` + `deposit` - `Withdraw` + `Receive` - `Send`) AS `NowBalance` from ((`vf_cash` `v` left join `vf_transaction_po` `trans` on(`v`.`id_VF_cash` = `trans`.`id_VF_cash`)) left join `send_receive` `sr` on(`v`.`id_VF_cash` = `sr`.`id_VF_cash`)) group by `v`.`id_VF_cash` ;

-- --------------------------------------------------------

--
-- Structure for view `unititems`
--
DROP TABLE IF EXISTS `unititems`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `unititems`  AS  (select `i`.`id_items` AS `id_items`,`i`.`name_items` AS `name_items`,`i`.`firstbalance` AS `firstbalance`,`u`.`low` AS `low`,`u`.`high` AS `high`,`u`.`val` AS `val` from (`items` `i` join `unit` `u` on(`i`.`id` = `u`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casher`
--
ALTER TABLE `casher`
  ADD PRIMARY KEY (`id_casher`),
  ADD KEY `fk_user` (`id_users`);

--
-- Indexes for table `cashertwo`
--
ALTER TABLE `cashertwo`
  ADD PRIMARY KEY (`id_CasherTwo`);

--
-- Indexes for table `categoryutilites`
--
ALTER TABLE `categoryutilites`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `clientaccount`
--
ALTER TABLE `clientaccount`
  ADD PRIMARY KEY (`id_ClientAccount`),
  ADD KEY `id_salesInvoic` (`id_salesInvoic`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_Receipt` (`id_Receipt`),
  ADD KEY `fk_masary` (`id_masary_pay`);

--
-- Indexes for table `deficiency_excess`
--
ALTER TABLE `deficiency_excess`
  ADD PRIMARY KEY (`id_deficiency_excess`);

--
-- Indexes for table `expensescategory`
--
ALTER TABLE `expensescategory`
  ADD PRIMARY KEY (`id_expensesCategory`),
  ADD UNIQUE KEY `name_expensesCategory` (`name_expensesCategory`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id_fees`),
  ADD KEY `id_expensesCategory` (`id_expensesCategory`);

--
-- Indexes for table `finallyday`
--
ALTER TABLE `finallyday`
  ADD PRIMARY KEY (`dateFinally`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_items`),
  ADD UNIQUE KEY `namtitm` (`name_items`),
  ADD KEY `fkitemsunit` (`id`);

--
-- Indexes for table `itemsonpurchaseinvoice`
--
ALTER TABLE `itemsonpurchaseinvoice`
  ADD KEY `id_items` (`id_items`),
  ADD KEY `id_purchaseInvoice` (`id_purchaseInvoice`);

--
-- Indexes for table `itemsonsalesinvoice`
--
ALTER TABLE `itemsonsalesinvoice`
  ADD KEY `id_items` (`id_items`),
  ADD KEY `id_salesInvoic` (`id_salesInvoic`);

--
-- Indexes for table `masary_pay`
--
ALTER TABLE `masary_pay`
  ADD PRIMARY KEY (`id_masary_pay`),
  ADD KEY `id_utility_masary` (`id_utility_masary`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `fk_pos` (`id_pos`);

--
-- Indexes for table `masary_sell`
--
ALTER TABLE `masary_sell`
  ADD PRIMARY KEY (`id_masary_sell`),
  ADD KEY `id_Suppliers` (`id_Suppliers`),
  ADD KEY `fk_pos_sell` (`id_pos`),
  ADD KEY `fk_recharge_type` (`id_recharge_type`),
  ADD KEY `fk_vf_cash` (`id_VF_cash`);

--
-- Indexes for table `notifcation`
--
ALTER TABLE `notifcation`
  ADD PRIMARY KEY (`id_notifcation`),
  ADD KEY `id_solf` (`id_Solf`);

--
-- Indexes for table `paydebt`
--
ALTER TABLE `paydebt`
  ADD PRIMARY KEY (`id_paydebt`),
  ADD KEY `id_Solf` (`id_Solf`);

--
-- Indexes for table `paymentreceipt`
--
ALTER TABLE `paymentreceipt`
  ADD PRIMARY KEY (`id_PaymentReceipt`),
  ADD KEY `id_Suppliers` (`id_Suppliers`);

--
-- Indexes for table `phone_numbers`
--
ALTER TABLE `phone_numbers`
  ADD PRIMARY KEY (`id_phone_number`),
  ADD UNIQUE KEY `numbers` (`numbers`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`id_pos`);

--
-- Indexes for table `priselist`
--
ALTER TABLE `priselist`
  ADD PRIMARY KEY (`id_priceList`),
  ADD KEY `id_items` (`id_items`);

--
-- Indexes for table `purchaseinvoice`
--
ALTER TABLE `purchaseinvoice`
  ADD PRIMARY KEY (`id_purchaseInvoice`),
  ADD KEY `id_Suppliers` (`id_Suppliers`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id_Receipt`),
  ADD KEY `id_client` (`id_client`);

--
-- Indexes for table `recharge_type`
--
ALTER TABLE `recharge_type`
  ADD PRIMARY KEY (`id_recharge_type`);

--
-- Indexes for table `salesinvoic`
--
ALTER TABLE `salesinvoic`
  ADD PRIMARY KEY (`id_salesInvoic`),
  ADD KEY `id_client` (`id_client`);

--
-- Indexes for table `send_receive`
--
ALTER TABLE `send_receive`
  ADD PRIMARY KEY (`id_Send_Receive`),
  ADD KEY `id_Suppliers` (`id_Suppliers`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_VF_cash` (`id_VF_cash`);

--
-- Indexes for table `solf`
--
ALTER TABLE `solf`
  ADD PRIMARY KEY (`id_Solf`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id_Suppliers`),
  ADD KEY `fk_supplier_type` (`id_supplier_type`);

--
-- Indexes for table `suppliersaccount`
--
ALTER TABLE `suppliersaccount`
  ADD PRIMARY KEY (`id_supplliersAccount`),
  ADD KEY `id_Suppliers` (`id_Suppliers`),
  ADD KEY `id_purchaseInvoice` (`id_purchaseInvoice`),
  ADD KEY `id_paymentReceipt` (`id_paymentReceipt`),
  ADD KEY `fk_masary_account` (`id_masary_sell`);

--
-- Indexes for table `supplier_type`
--
ALTER TABLE `supplier_type`
  ADD PRIMARY KEY (`id_supplier_type`),
  ADD UNIQUE KEY `name_supplier_type` (`name_supplier_type`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- Indexes for table `utility_masary`
--
ALTER TABLE `utility_masary`
  ADD PRIMARY KEY (`id_utility_masary`),
  ADD KEY `fk_pos_utiltiy` (`id_pos`);

--
-- Indexes for table `vf_cash`
--
ALTER TABLE `vf_cash`
  ADD PRIMARY KEY (`id_VF_cash`),
  ADD UNIQUE KEY `number_VF_cash` (`number_VF_cash`);

--
-- Indexes for table `vf_transaction_po`
--
ALTER TABLE `vf_transaction_po`
  ADD PRIMARY KEY (`id_transaction`),
  ADD KEY `id_VF_cash` (`id_VF_cash`),
  ADD KEY `id_pos` (`id_pos`),
  ADD KEY `id_masary_pay` (`id_masary_pay`),
  ADD KEY `id_masary_sell` (`id_masary_sell`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casher`
--
ALTER TABLE `casher`
  MODIFY `id_casher` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `cashertwo`
--
ALTER TABLE `cashertwo`
  MODIFY `id_CasherTwo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categoryutilites`
--
ALTER TABLE `categoryutilites`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `clientaccount`
--
ALTER TABLE `clientaccount`
  MODIFY `id_ClientAccount` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `deficiency_excess`
--
ALTER TABLE `deficiency_excess`
  MODIFY `id_deficiency_excess` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expensescategory`
--
ALTER TABLE `expensescategory`
  MODIFY `id_expensesCategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id_fees` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `masary_pay`
--
ALTER TABLE `masary_pay`
  MODIFY `id_masary_pay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `masary_sell`
--
ALTER TABLE `masary_sell`
  MODIFY `id_masary_sell` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifcation`
--
ALTER TABLE `notifcation`
  MODIFY `id_notifcation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paydebt`
--
ALTER TABLE `paydebt`
  MODIFY `id_paydebt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `phone_numbers`
--
ALTER TABLE `phone_numbers`
  MODIFY `id_phone_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `id_pos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchaseinvoice`
--
ALTER TABLE `purchaseinvoice`
  MODIFY `id_purchaseInvoice` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recharge_type`
--
ALTER TABLE `recharge_type`
  MODIFY `id_recharge_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `send_receive`
--
ALTER TABLE `send_receive`
  MODIFY `id_Send_Receive` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `solf`
--
ALTER TABLE `solf`
  MODIFY `id_Solf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliersaccount`
--
ALTER TABLE `suppliersaccount`
  MODIFY `id_supplliersAccount` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `supplier_type`
--
ALTER TABLE `supplier_type`
  MODIFY `id_supplier_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `utility_masary`
--
ALTER TABLE `utility_masary`
  MODIFY `id_utility_masary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `vf_cash`
--
ALTER TABLE `vf_cash`
  MODIFY `id_VF_cash` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vf_transaction_po`
--
ALTER TABLE `vf_transaction_po`
  MODIFY `id_transaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `casher`
--
ALTER TABLE `casher`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Constraints for table `clientaccount`
--
ALTER TABLE `clientaccount`
  ADD CONSTRAINT `clientaccount_ibfk_1` FOREIGN KEY (`id_salesInvoic`) REFERENCES `salesinvoic` (`id_salesInvoic`),
  ADD CONSTRAINT `clientaccount_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `clientaccount_ibfk_3` FOREIGN KEY (`id_Receipt`) REFERENCES `receipt` (`id_Receipt`),
  ADD CONSTRAINT `fk_masary` FOREIGN KEY (`id_masary_pay`) REFERENCES `masary_pay` (`id_masary_pay`);

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`id_expensesCategory`) REFERENCES `expensescategory` (`id_expensesCategory`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `fkitemsunit` FOREIGN KEY (`id`) REFERENCES `unit` (`id`);

--
-- Constraints for table `itemsonpurchaseinvoice`
--
ALTER TABLE `itemsonpurchaseinvoice`
  ADD CONSTRAINT `itemsonpurchaseinvoice_ibfk_1` FOREIGN KEY (`id_items`) REFERENCES `items` (`id_items`),
  ADD CONSTRAINT `itemsonpurchaseinvoice_ibfk_3` FOREIGN KEY (`id_purchaseInvoice`) REFERENCES `purchaseinvoice` (`id_purchaseInvoice`);

--
-- Constraints for table `itemsonsalesinvoice`
--
ALTER TABLE `itemsonsalesinvoice`
  ADD CONSTRAINT `itemsonsalesinvoice_ibfk_1` FOREIGN KEY (`id_items`) REFERENCES `items` (`id_items`),
  ADD CONSTRAINT `itemsonsalesinvoice_ibfk_3` FOREIGN KEY (`id_salesInvoic`) REFERENCES `salesinvoic` (`id_salesInvoic`);

--
-- Constraints for table `masary_pay`
--
ALTER TABLE `masary_pay`
  ADD CONSTRAINT `fk_pos` FOREIGN KEY (`id_pos`) REFERENCES `pos` (`id_pos`),
  ADD CONSTRAINT `masary_pay_ibfk_1` FOREIGN KEY (`id_utility_masary`) REFERENCES `utility_masary` (`id_utility_masary`),
  ADD CONSTRAINT `masary_pay_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);

--
-- Constraints for table `masary_sell`
--
ALTER TABLE `masary_sell`
  ADD CONSTRAINT `fk_pos_sell` FOREIGN KEY (`id_pos`) REFERENCES `pos` (`id_pos`),
  ADD CONSTRAINT `fk_recharge_type` FOREIGN KEY (`id_recharge_type`) REFERENCES `recharge_type` (`id_recharge_type`),
  ADD CONSTRAINT `fk_vf_cash` FOREIGN KEY (`id_VF_cash`) REFERENCES `vf_cash` (`id_VF_cash`),
  ADD CONSTRAINT `masary_sell_ibfk_1` FOREIGN KEY (`id_Suppliers`) REFERENCES `suppliers` (`id_Suppliers`);

--
-- Constraints for table `notifcation`
--
ALTER TABLE `notifcation`
  ADD CONSTRAINT `fk_solf` FOREIGN KEY (`id_Solf`) REFERENCES `solf` (`id_Solf`);

--
-- Constraints for table `paydebt`
--
ALTER TABLE `paydebt`
  ADD CONSTRAINT `paydebt_ibfk_1` FOREIGN KEY (`id_Solf`) REFERENCES `solf` (`id_Solf`);

--
-- Constraints for table `priselist`
--
ALTER TABLE `priselist`
  ADD CONSTRAINT `priselist_ibfk_1` FOREIGN KEY (`id_items`) REFERENCES `items` (`id_items`);

--
-- Constraints for table `purchaseinvoice`
--
ALTER TABLE `purchaseinvoice`
  ADD CONSTRAINT `purchaseinvoice_ibfk_1` FOREIGN KEY (`id_Suppliers`) REFERENCES `suppliers` (`id_Suppliers`);

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);

--
-- Constraints for table `salesinvoic`
--
ALTER TABLE `salesinvoic`
  ADD CONSTRAINT `salesinvoic_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);

--
-- Constraints for table `send_receive`
--
ALTER TABLE `send_receive`
  ADD CONSTRAINT `send_receive_ibfk_1` FOREIGN KEY (`id_Suppliers`) REFERENCES `suppliers` (`id_Suppliers`),
  ADD CONSTRAINT `send_receive_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `send_receive_ibfk_3` FOREIGN KEY (`id_VF_cash`) REFERENCES `vf_cash` (`id_VF_cash`);

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `fk_supplier_type` FOREIGN KEY (`id_supplier_type`) REFERENCES `supplier_type` (`id_supplier_type`);

--
-- Constraints for table `suppliersaccount`
--
ALTER TABLE `suppliersaccount`
  ADD CONSTRAINT `fk_masary_account` FOREIGN KEY (`id_masary_sell`) REFERENCES `masary_sell` (`id_masary_sell`),
  ADD CONSTRAINT `suppliersaccount_ibfk_1` FOREIGN KEY (`id_Suppliers`) REFERENCES `suppliers` (`id_Suppliers`),
  ADD CONSTRAINT `suppliersaccount_ibfk_2` FOREIGN KEY (`id_purchaseInvoice`) REFERENCES `purchaseinvoice` (`id_purchaseInvoice`),
  ADD CONSTRAINT `suppliersaccount_ibfk_3` FOREIGN KEY (`id_paymentReceipt`) REFERENCES `paymentreceipt` (`id_PaymentReceipt`);

--
-- Constraints for table `utility_masary`
--
ALTER TABLE `utility_masary`
  ADD CONSTRAINT `fk_pos_utiltiy` FOREIGN KEY (`id_pos`) REFERENCES `pos` (`id_pos`);

--
-- Constraints for table `vf_transaction_po`
--
ALTER TABLE `vf_transaction_po`
  ADD CONSTRAINT `vf_transaction_po_ibfk_1` FOREIGN KEY (`id_VF_cash`) REFERENCES `vf_cash` (`id_VF_cash`),
  ADD CONSTRAINT `vf_transaction_po_ibfk_2` FOREIGN KEY (`id_pos`) REFERENCES `pos` (`id_pos`),
  ADD CONSTRAINT `vf_transaction_po_ibfk_3` FOREIGN KEY (`id_masary_pay`) REFERENCES `masary_pay` (`id_masary_pay`),
  ADD CONSTRAINT `vf_transaction_po_ibfk_4` FOREIGN KEY (`id_masary_sell`) REFERENCES `masary_sell` (`id_masary_sell`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `finalDay` ON SCHEDULE EVERY 24 HOUR STARTS '2022-07-03 00:00:00' ON COMPLETION PRESERVE ENABLE DO INSERT INTO `finallyday`( `dateFinally`, `oldBalance`, `totalimport`, `totalexport`,`time_insert` ) VALUES( CURRENT_DATE(),( SELECT f.newbalance FROM finallyday AS f WHERE f.dateFinally = CURRENT_DATE() - INTERVAL 1 DAY), ( SELECT COALESCE(SUM(c.Debit), 0) FROM casher AS c WHERE c.date_casher = CURRENT_DATE()), ( SELECT COALESCE(SUM(c.Creditor), 0) FROM casher AS c WHERE c.date_casher = CURRENT_DATE()),current_timestamp())$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;