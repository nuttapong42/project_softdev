-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2020 at 07:31 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `b_id` int(11) NOT NULL,
  `b_form` varchar(100) NOT NULL,
  `b_to` varchar(100) NOT NULL,
  `train_no` varchar(100) NOT NULL,
  `date_save` datetime NOT NULL DEFAULT current_timestamp(),
  `booking_date` varchar(100) NOT NULL,
  `b_price` varchar(200) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`b_id`, `b_form`, `b_to`, `train_no`, `date_save`, `booking_date`, `b_price`, `id`) VALUES
(6, 'Ban Thap Chang', 'Ratchaprarop', '', '2020-11-24 00:36:27', '', '', 0),
(7, 'Suvarnabhumi', 'Ramkhamhaeng', '', '2020-11-24 00:38:15', '', '', 0),
(8, 'Lat krabang', 'Hua Mak', '', '2020-11-24 00:41:20', '2020-11-27T02:43', '', 0),
(9, 'Lat krabang', 'Suvarnabhumi', '', '2020-11-25 21:09:29', '2020-11-12T21:09', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking_2`
--

CREATE TABLE `booking_2` (
  `booking_id` int(11) NOT NULL,
  `date_save` varchar(70) NOT NULL,
  `seat_no` varchar(20) NOT NULL,
  `schdule_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_2`
--

INSERT INTO `booking_2` (`booking_id`, `date_save`, `seat_no`, `schdule_id`, `user_id`) VALUES
(17, '2020-11-26', '1', '440', 'pinkkyyyyy'),
(18, '2020-11-26', '2', '188', 'pinkkyyyyy'),
(19, '2020-11-26', '2', '440', 'pinkkyyyyy');

-- --------------------------------------------------------

--
-- Table structure for table `order_tb`
--

CREATE TABLE `order_tb` (
  `order_id` int(11) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `id_train` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `payment_detail` varchar(40) NOT NULL,
  `payment_for` varchar(40) NOT NULL,
  `schdule_id` varchar(20) NOT NULL,
  `date_save` varchar(70) NOT NULL,
  `seat_no` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_type`, `payment_detail`, `payment_for`, `schdule_id`, `date_save`, `seat_no`, `user_id`) VALUES
(2, 'KBANK', '0943130402', 'TRTSF', '486', '2020-12-03', '48', 'tum'),
(3, 'KBANK', '0943130402', 'TRTSF', '628', '2020-11-20', '28', 'tum'),
(4, 'KBANK', '0943130402', 'TRTSF', '217', '2020-11-28', '16', 'pinkkyyyyy'),
(5, 'KBANK', '0943130402', 'TRTSF', '608', '2020-11-28', '29', 'pinkkyyyyy'),
(6, '', '0943130402', 'TRTSF', '218', '2020-11-29', '4', 'pinkkyyyyy'),
(7, '', '0943130402', 'TRTSF', '612', '2020-12-05', '23', 'pinkkyyyyy'),
(8, '', '0943130402', 'TRTSF', '147', '2020-12-02', '39', 'pinkkyyyyy'),
(9, 'VISA', '0943130402', 'TRTSF', '617', '2021-01-07', '48', 'pinkkyyyyy'),
(10, 'Mastercard', '0943130402', 'TRTSF', '188', '2020-11-26', '1', 'pinkkyyyyy'),
(11, 'KBANK', '0943130402', 'TRTSF', '157', '2020-11-26', '48', 'pinkkyyyyy'),
(12, 'Mastercard', '0943130402', 'TRTSF', '440', '2020-11-26', '1', 'pinkkyyyyy'),
(13, 'KBANK', '', '', '188', '2020-11-26', '2', 'pinkkyyyyy'),
(14, 'KBANK', '', '', '440', '2020-11-26', '2', 'pinkkyyyyy'),
(15, 'VISA', '0943130402', 'TRTSF', '119', '', '40', 'tum');

-- --------------------------------------------------------

--
-- Table structure for table `schdule`
--

CREATE TABLE `schdule` (
  `schdule_id` int(11) NOT NULL,
  `schdule_form` varchar(100) NOT NULL,
  `schdule_to` varchar(100) NOT NULL,
  `schdule_time` varchar(100) NOT NULL,
  `seat` varchar(20) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schdule`
--

INSERT INTO `schdule` (`schdule_id`, `schdule_form`, `schdule_to`, `schdule_time`, `seat`, `price`) VALUES
(2, 'Lat Krabang', 'Ban Thap Chang', '5.05', '48', 20),
(3, 'Ban Thap Chang', 'Hua Mak', '5.10', '48', 20),
(4, 'Hua Mak', 'Ramkhamhaeng', '5.15', '48', 20),
(5, 'Ramkhamhaeng', 'Makkasan - Phetburi', '5.20', '48', 20),
(6, 'Makkasan - Phetburi', 'Ratchaprarop', '5.25', '48', 20),
(7, 'Ratchaprarop', 'Phayathai', '5.30', '48', 20),
(8, 'Phayathai', 'Ratchaprarop', '5.30', '48', 20),
(9, 'Ratchaprarop', 'Makkasan - Phetburi', '5.35', '48', 20),
(10, 'Makkasan - Phetburi', 'Ramkhamhaeng', '5.40', '48', 20),
(11, 'Ramkhamhaeng', 'Hua Mak', '5.45', '48', 20),
(12, 'Hua Mak', 'Ban Thap Chang', '5.50', '48', 20),
(13, 'Ban Thap Chang', 'Lat Krabang', '5.55', '48', 20),
(14, 'Lat Krabang', 'Suvarnabhumi', '6.00', '48', 20),
(15, 'Suvarnabhumi', 'Lat Krabang', '6.00', '48', 20),
(16, 'Lat Krabang', 'Ban Thap Chang', '6.05', '48', 20),
(17, 'Ban Thap Chang', 'Hua Mak', '6.10', '48', 20),
(18, 'Hua Mak', 'Ramkhamhaeng', '6.15', '48', 20),
(19, 'Ramkhamhaeng', 'Makkasan - Phetburi', '6.20', '48', 20),
(20, 'Makkasan - Phetburi', 'Ratchaprarop', '6.25', '48', 20),
(21, 'Ratchaprarop', 'Phayathai', '6.30', '48', 20),
(22, 'Phayathai', 'Ratchaprarop', '6.30', '48', 20),
(23, 'Ratchaprarop', 'Makkasan - Phetburi', '6.35', '48', 20),
(24, 'Makkasan - Phetburi', 'Ramkhamhaeng', '6.40', '48', 20),
(25, 'Ramkhamhaeng', 'Hua Mak', '6.45', '48', 20),
(26, 'Hua Mak', 'Ban Thap Chang', '6.50', '48', 20),
(27, 'Ban Thap Chang', 'Lat Krabang', '6.55', '48', 20),
(28, 'Lat Krabang', 'Suvarnabhumi', '7.00', '48', 20),
(29, 'Suvarnabhumi', 'Lat Krabang', '7.00', '48', 20),
(30, 'Lat Krabang', 'Ban Thap Chang', '7.05', '48', 20),
(31, 'Ban Thap Chang', 'Hua Mak', '7.10', '48', 20),
(32, 'Hua Mak', 'Ramkhamhaeng', '7.15', '48', 20),
(33, 'Ramkhamhaeng', 'Makkasan - Phetburi', '7.20', '48', 20),
(34, 'Makkasan - Phetburi', 'Ratchaprarop', '7.25', '48', 20),
(35, 'Ratchaprarop', 'Phayathai', '7.30', '48', 20),
(36, 'Phayathai', 'Ratchaprarop', '7.30', '48', 20),
(37, 'Ratchaprarop', 'Makkasan - Phetburi', '7.35', '48', 20),
(38, 'Makkasan - Phetburi', 'Ramkhamhaeng', '7.40', '48', 20),
(39, 'Ramkhamhaeng', 'Hua Mak', '7.45', '48', 20),
(40, 'Hua Mak', 'Ban Thap Chang', '7.50', '48', 20),
(41, 'Ban Thap Chang', 'Lat Krabang', '7.55', '48', 20),
(42, 'Lat Krabang', 'Suvarnabhumi', '8.00', '48', 20),
(43, 'Suvarnabhumi', 'Lat Krabang', '8.00', '48', 20),
(44, 'Lat Krabang', 'Ban Thap Chang', '8.05', '48', 20),
(45, 'Ban Thap Chang', 'Hua Mak', '8.10', '48', 20),
(46, 'Hua Mak', 'Ramkhamhaeng', '8.15', '48', 20),
(47, 'Ramkhamhaeng', 'Makkasan - Phetburi', '8.20', '48', 20),
(48, 'Makkasan - Phetburi', 'Ratchaprarop', '8.25', '48', 20),
(49, 'Ratchaprarop', 'Phayathai', '8.30', '48', 20),
(50, 'Phayathai', 'Ratchaprarop', '8.30', '48', 20),
(51, 'Ratchaprarop', 'Makkasan - Phetburi', '8.35', '48', 20),
(52, 'Makkasan - Phetburi', 'Ramkhamhaeng', '8.40', '48', 20),
(53, 'Ramkhamhaeng', 'Hua Mak', '8.45', '48', 20),
(54, 'Hua Mak', 'Ban Thap Chang', '8.50', '48', 20),
(55, 'Ban Thap Chang', 'Lat Krabang', '8.55', '48', 20),
(56, 'Lat Krabang', 'Suvarnabhumi', '9.00', '48', 20),
(57, 'Suvarnabhumi', 'Lat Krabang', '9.00', '48', 20),
(58, 'Lat Krabang', 'Ban Thap Chang', '9.05', '48', 20),
(59, 'Ban Thap Chang', 'Hua Mak', '9.10', '48', 20),
(60, 'Hua Mak', 'Ramkhamhaeng', '9.15', '48', 20),
(61, 'Ramkhamhaeng', 'Makkasan - Phetburi', '9.20', '48', 20),
(62, 'Makkasan - Phetburi', 'Ratchaprarop', '9.25', '48', 20),
(63, 'Ratchaprarop', 'Phayathai', '9.30', '48', 20),
(64, 'Phayathai', 'Ratchaprarop', '9.30', '48', 20),
(65, 'Ratchaprarop', 'Makkasan - Phetburi', '9.35', '48', 20),
(66, 'Makkasan - Phetburi', 'Ramkhamhaeng', '9.40', '48', 20),
(67, 'Ramkhamhaeng', 'Hua Mak', '9.45', '48', 20),
(68, 'Hua Mak', 'Ban Thap Chang', '9.50', '48', 20),
(69, 'Ban Thap Chang', 'Lat Krabang', '9.55', '48', 20),
(70, 'Lat Krabang', 'Suvarnabhumi', '10.00', '48', 20),
(71, 'Suvarnabhumi', 'Lat Krabang', '10.00', '48', 20),
(72, 'Lat Krabang', 'Ban Thap Chang', '10.05', '48', 20),
(73, 'Ban Thap Chang', 'Hua Mak', '10.10', '48', 20),
(74, 'Hua Mak', 'Ramkhamhaeng', '10.15', '48', 20),
(75, 'Ramkhamhaeng', 'Makkasan - Phetburi', '10.20', '48', 20),
(76, 'Makkasan - Phetburi', 'Ratchaprarop', '10.25', '48', 20),
(77, 'Ratchaprarop', 'Phayathai', '10.30', '48', 20),
(78, 'Phayathai', 'Ratchaprarop', '10.30', '48', 20),
(79, 'Ratchaprarop', 'Makkasan - Phetburi', '10.35', '48', 20),
(80, 'Makkasan - Phetburi', 'Ramkhamhaeng', '10.40', '48', 20),
(81, 'Ramkhamhaeng', 'Hua Mak', '10.45', '48', 20),
(82, 'Hua Mak', 'Ban Thap Chang', '10.50', '48', 20),
(83, 'Ban Thap Chang', 'Lat Krabang', '10.55', '48', 20),
(84, 'Lat Krabang', 'Suvarnabhumi', '11.00', '48', 20),
(85, 'Suvarnabhumi', 'Lat Krabang', '11.00', '48', 20),
(86, 'Lat Krabang', 'Ban Thap Chang', '11.05', '48', 20),
(87, 'Ban Thap Chang', 'Hua Mak', '11.10', '48', 20),
(88, 'Hua Mak', 'Ramkhamhaeng', '11.15', '48', 20),
(89, 'Ramkhamhaeng', 'Makkasan - Phetburi', '11.20', '48', 20),
(90, 'Makkasan - Phetburi', 'Ratchaprarop', '11.25', '48', 20),
(91, 'Ratchaprarop', 'Phayathai', '11.30', '48', 20),
(92, 'Phayathai', 'Ratchaprarop', '11.30', '48', 20),
(93, 'Ratchaprarop', 'Makkasan - Phetburi', '11.35', '48', 20),
(94, 'Makkasan - Phetburi', 'Ramkhamhaeng', '11.40', '48', 20),
(95, 'Ramkhamhaeng', 'Hua Mak', '11.45', '48', 20),
(96, 'Hua Mak', 'Ban Thap Chang', '11.50', '48', 20),
(97, 'Ban Thap Chang', 'Lat Krabang', '11.55', '48', 20),
(98, 'Lat Krabang', 'Suvarnabhumi', '12.00', '48', 20),
(99, 'Suvarnabhumi', 'Lat Krabang', '12.00', '48', 20),
(100, 'Lat Krabang', 'Ban Thap Chang', '12.05', '48', 20),
(101, 'Ban Thap Chang', 'Hua Mak', '12.10', '48', 20),
(102, 'Hua Mak', 'Ramkhamhaeng', '12.15', '48', 20),
(103, 'Ramkhamhaeng', 'Makkasan - Phetburi', '12.20', '48', 20),
(104, 'Makkasan - Phetburi', 'Ratchaprarop', '12.25', '48', 20),
(105, 'Ratchaprarop', 'Phayathai', '12.30', '48', 20),
(106, 'Phayathai', 'Ratchaprarop', '12.30', '48', 20),
(107, 'Ratchaprarop', 'Makkasan - Phetburi', '12.35', '48', 20),
(108, 'Makkasan - Phetburi', 'Ramkhamhaeng', '12.40', '48', 20),
(109, 'Ramkhamhaeng', 'Hua Mak', '12.45', '48', 20),
(110, 'Hua Mak', 'Ban Thap Chang', '12.50', '48', 20),
(111, 'Ban Thap Chang', 'Lat Krabang', '12.55', '48', 20),
(112, 'Lat Krabang', 'Suvarnabhumi', '13.00', '48', 20),
(113, 'Suvarnabhumi', 'Lat Krabang', '13.00', '48', 20),
(114, 'Lat Krabang', 'Ban Thap Chang', '13.05', '48', 20),
(115, 'Ban Thap Chang', 'Hua Mak', '13.10', '48', 20),
(116, 'Hua Mak', 'Ramkhamhaeng', '13.15', '48', 20),
(117, 'Ramkhamhaeng', 'Makkasan - Phetburi', '13.20', '48', 20),
(118, 'Makkasan - Phetburi', 'Ratchaprarop', '13.25', '48', 20),
(119, 'Ratchaprarop', 'Phayathai', '13.30', '48', 20),
(120, 'Phayathai', 'Ratchaprarop', '13.30', '48', 20),
(121, 'Ratchaprarop', 'Makkasan - Phetburi', '13.35', '48', 20),
(122, 'Makkasan - Phetburi', 'Ramkhamhaeng', '13.40', '48', 20),
(123, 'Ramkhamhaeng', 'Hua Mak', '13.45', '48', 20),
(124, 'Hua Mak', 'Ban Thap Chang', '13.50', '48', 20),
(125, 'Ban Thap Chang', 'Lat Krabang', '13.55', '48', 20),
(126, 'Lat Krabang', 'Suvarnabhumi', '14.00', '48', 20),
(127, 'Suvarnabhumi', 'Lat Krabang', '14.00', '48', 20),
(128, 'Lat Krabang', 'Ban Thap Chang', '14.05', '48', 20),
(129, 'Ban Thap Chang', 'Hua Mak', '14.10', '48', 20),
(130, 'Hua Mak', 'Ramkhamhaeng', '14.15', '48', 20),
(131, 'Ramkhamhaeng', 'Makkasan - Phetburi', '14.20', '48', 20),
(132, 'Makkasan - Phetburi', 'Ratchaprarop', '14.25', '48', 20),
(133, 'Ratchaprarop', 'Phayathai', '14.30', '48', 20),
(134, 'Phayathai', 'Ratchaprarop', '14.30', '48', 20),
(135, 'Ratchaprarop', 'Makkasan - Phetburi', '14.35', '48', 20),
(136, 'Makkasan - Phetburi', 'Ramkhamhaeng', '14.40', '48', 20),
(137, 'Ramkhamhaeng', 'Hua Mak', '14.45', '48', 20),
(138, 'Hua Mak', 'Ban Thap Chang', '14.50', '48', 20),
(139, 'Ban Thap Chang', 'Lat Krabang', '14.55', '48', 20),
(140, 'Lat Krabang', 'Suvarnabhumi', '15.00', '48', 20),
(141, 'Suvarnabhumi', 'Lat Krabang', '15.00', '48', 20),
(142, 'Lat Krabang', 'Ban Thap Chang', '15.05', '48', 20),
(143, 'Ban Thap Chang', 'Hua Mak', '15.10', '48', 20),
(144, 'Hua Mak', 'Ramkhamhaeng', '15.15', '48', 20),
(145, 'Ramkhamhaeng', 'Makkasan - Phetburi', '15.20', '48', 20),
(146, 'Makkasan - Phetburi', 'Ratchaprarop', '15.25', '48', 20),
(147, 'Ratchaprarop', 'Phayathai', '15.30', '48', 20),
(148, 'Phayathai', 'Ratchaprarop', '15.30', '48', 20),
(149, 'Ratchaprarop', 'Makkasan - Phetburi', '15.35', '48', 20),
(150, 'Makkasan - Phetburi', 'Ramkhamhaeng', '15.40', '48', 20),
(151, 'Ramkhamhaeng', 'Hua Mak', '15.45', '48', 20),
(152, 'Hua Mak', 'Ban Thap Chang', '15.50', '48', 20),
(153, 'Ban Thap Chang', 'Lat Krabang', '15.55', '48', 20),
(154, 'Lat Krabang', 'Suvarnabhumi', '16.00', '48', 20),
(155, 'Suvarnabhumi', 'Lat Krabang', '16.00', '48', 20),
(156, 'Lat Krabang', 'Ban Thap Chang', '16.05', '48', 20),
(157, 'Ban Thap Chang', 'Hua Mak', '16.10', '48', 20),
(158, 'Hua Mak', 'Ramkhamhaeng', '16.15', '48', 20),
(159, 'Ramkhamhaeng', 'Makkasan - Phetburi', '16.20', '48', 20),
(160, 'Makkasan - Phetburi', 'Ratchaprarop', '16.25', '48', 20),
(161, 'Ratchaprarop', 'Phayathai', '16.30', '48', 20),
(162, 'Phayathai', 'Ratchaprarop', '16.30', '48', 20),
(163, 'Ratchaprarop', 'Makkasan - Phetburi', '16.35', '48', 20),
(164, 'Makkasan - Phetburi', 'Ramkhamhaeng', '16.40', '48', 20),
(165, 'Ramkhamhaeng', 'Hua Mak', '16.45', '48', 20),
(166, 'Hua Mak', 'Ban Thap Chang', '16.50', '48', 20),
(167, 'Ban Thap Chang', 'Lat Krabang', '16.55', '48', 20),
(168, 'Lat Krabang', 'Suvarnabhumi', '17.00', '48', 20),
(169, 'Suvarnabhumi', 'Lat Krabang', '17.00', '48', 20),
(170, 'Lat Krabang', 'Ban Thap Chang', '17.05', '48', 20),
(171, 'Ban Thap Chang', 'Hua Mak', '17.10', '48', 20),
(172, 'Hua Mak', 'Ramkhamhaeng', '17.15', '48', 20),
(173, 'Ramkhamhaeng', 'Makkasan - Phetburi', '17.20', '48', 20),
(174, 'Makkasan - Phetburi', 'Ratchaprarop', '17.25', '48', 20),
(175, 'Ratchaprarop', 'Phayathai', '17.30', '48', 20),
(176, 'Phayathai', 'Ratchaprarop', '17.30', '48', 20),
(177, 'Ratchaprarop', 'Makkasan - Phetburi', '17.35', '48', 20),
(178, 'Makkasan - Phetburi', 'Ramkhamhaeng', '17.40', '48', 20),
(179, 'Ramkhamhaeng', 'Hua Mak', '17.45', '48', 20),
(180, 'Hua Mak', 'Ban Thap Chang', '17.50', '48', 20),
(181, 'Ban Thap Chang', 'Lat Krabang', '17.55', '48', 20),
(182, 'Lat Krabang', 'Suvarnabhumi', '18.00', '48', 20),
(183, 'Suvarnabhumi', 'Ban Thap Chang', '5.00', '48', 40),
(184, 'Suvarnabhumi', 'Hua Mak', '5.00', '48', 40),
(185, 'Suvarnabhumi', 'Ramkhamhaeng', '5.00', '48', 40),
(186, 'Suvarnabhumi', 'Makkasan - Phetburi', '5.00', '48', 40),
(187, 'Suvarnabhumi', 'Ratchaprarop', '5.00', '48', 40),
(188, 'Suvarnabhumi', 'Phayathai', '5.00', '48', 40),
(189, 'Lat Krabang', 'Hua Mak', '5.05', '48', 40),
(190, 'Lat Krabang', 'Ramkhamhaeng', '5.05', '48', 40),
(191, 'Lat Krabang', 'Makkasan - Phetburi', '5.05', '48', 40),
(192, 'Lat Krabang', 'Ratchaprarop', '5.05', '48', 40),
(193, 'Lat Krabang', 'Phayathai', '5.05', '48', 40),
(194, 'Ban Thap Chang', 'Ramkhamhaeng', '5.10', '48', 40),
(195, 'Ban Thap Chang', 'Makkasan - Phetburi', '5.10', '48', 40),
(196, 'Ban Thap Chang', 'Ratchaprarop', '5.10', '48', 40),
(197, 'Ban Thap Chang', 'Phayathai', '5.10', '48', 40),
(198, 'Ban Thap Chang', 'Suvarnabhumi', '5.55', '48', 40),
(199, 'Hua Mak', 'Suvarnabhumi', '5.50', '48', 40),
(200, 'Hua Mak', 'Lat Krabang', '5.50', '48', 40),
(201, 'Hua Mak', 'Makkasan - Phetburi', '5.15', '48', 40),
(202, 'Hua Mak', 'Ratchaprarop', '5.15', '48', 40),
(203, 'Hua Mak', 'Phayathai', '5.15', '48', 40),
(204, 'Ramkhamhaeng', 'Suvarnabhumi', '5.45', '48', 40),
(205, 'Ramkhamhaeng', 'Lat Krabang', '5.45', '48', 40),
(206, 'Ramkhamhaeng', 'Ban Thap Chang', '5.45', '48', 40),
(207, 'Ramkhamhaeng', 'Ratchaprarop', '5.20', '48', 40),
(208, 'Ramkhamhaeng', 'Phayathai', '5.20', '48', 40),
(209, 'Makkasan - Phetburi', 'Suvarnabhumi', '5.40', '48', 40),
(210, 'Makkasan - Phetburi', 'Lat Krabang', '5.40', '48', 40),
(211, 'Makkasan - Phetburi', 'Ban Thap Chang', '5.40', '48', 40),
(212, 'Makkasan - Phetburi', 'Hua Mak', '5.40', '48', 40),
(213, 'Makkasan - Phetburi', 'Phayathai', '5.25', '48', 40),
(214, 'Ratchaprarop', 'Suvarnabhumi', '5.35', '48', 40),
(215, 'Ratchaprarop', 'Lat Krabang', '5.35', '48', 40),
(216, 'Ratchaprarop', 'Ban Thap Chang', '5.35', '48', 40),
(217, 'Ratchaprarop', 'Hua Mak', '5.35', '48', 40),
(218, 'Ratchaprarop', 'Ramkhamhaeng', '5.35', '48', 40),
(219, 'Phayathai', 'Suvarnabhumi', '5.30', '48', 40),
(220, 'Phayathai', 'Lat Krabang', '5.30', '48', 40),
(221, 'Phayathai', 'Ban Thap Chang', '5.30', '48', 40),
(222, 'Phayathai', 'Hua Mak', '5.30', '48', 40),
(223, 'Phayathai', 'Ramkhamhaeng', '5.30', '48', 40),
(224, 'Phayathai', 'Makkasan - Phetburi', '5.30', '48', 40),
(225, 'Suvarnabhumi', 'Ban Thap Chang', '6.00', '48', 40),
(226, 'Suvarnabhumi', 'Hua Mak', '6.00', '48', 40),
(227, 'Suvarnabhumi', 'Ramkhamhaeng', '6.00', '48', 40),
(228, 'Suvarnabhumi', 'Makkasan - Phetburi', '6.00', '48', 40),
(229, 'Suvarnabhumi', 'Ratchaprarop', '6.00', '48', 40),
(230, 'Suvarnabhumi', 'Phayathai', '6.00', '48', 40),
(231, 'Lat Krabang', 'Hua Mak', '6.05', '48', 40),
(232, 'Lat Krabang', 'Ramkhamhaeng', '6.05', '48', 40),
(233, 'Lat Krabang', 'Makkasan - Phetburi', '6.05', '48', 40),
(234, 'Lat Krabang', 'Ratchaprarop', '6.05', '48', 40),
(235, 'Lat Krabang', 'Phayathai', '6.05', '48', 40),
(236, 'Ban Thap Chang', 'Ramkhamhaeng', '6.10', '48', 40),
(237, 'Ban Thap Chang', 'Makkasan - Phetburi', '6.10', '48', 40),
(238, 'Ban Thap Chang', 'Ratchaprarop', '6.10', '48', 40),
(239, 'Ban Thap Chang', 'Phayathai', '6.10', '48', 40),
(240, 'Ban Thap Chang', 'Suvarnabhumi', '6.55', '48', 40),
(241, 'Hua Mak', 'Suvarnabhumi', '6.50', '48', 40),
(242, 'Hua Mak', 'Lat Krabang', '6.50', '48', 40),
(243, 'Hua Mak', 'Makkasan - Phetburi', '6.15', '48', 40),
(244, 'Hua Mak', 'Ratchaprarop', '6.15', '48', 40),
(245, 'Hua Mak', 'Phayathai', '6.15', '48', 40),
(246, 'Ramkhamhaeng', 'Suvarnabhumi', '6.45', '48', 40),
(247, 'Ramkhamhaeng', 'Lat Krabang', '6.45', '48', 40),
(248, 'Ramkhamhaeng', 'Ban Thap Chang', '6.45', '48', 40),
(249, 'Ramkhamhaeng', 'Ratchaprarop', '6.20', '48', 40),
(250, 'Ramkhamhaeng', 'Phayathai', '6.20', '48', 40),
(251, 'Makkasan - Phetburi', 'Suvarnabhumi', '6.40', '48', 40),
(252, 'Makkasan - Phetburi', 'Lat Krabang', '6.40', '48', 40),
(253, 'Makkasan - Phetburi', 'Ban Thap Chang', '6.40', '48', 40),
(254, 'Makkasan - Phetburi', 'Hua Mak', '6.40', '48', 40),
(255, 'Makkasan - Phetburi', 'Phayathai', '6.25', '48', 40),
(256, 'Ratchaprarop', 'Suvarnabhumi', '6.35', '48', 40),
(257, 'Ratchaprarop', 'Lat Krabang', '6.35', '48', 40),
(258, 'Ratchaprarop', 'Ban Thap Chang', '6.35', '48', 40),
(259, 'Ratchaprarop', 'Hua Mak', '6.35', '48', 40),
(260, 'Ratchaprarop', 'Ramkhamhaeng', '6.35', '48', 40),
(261, 'Phayathai', 'Suvarnabhumi', '6.30', '48', 40),
(262, 'Phayathai', 'Lat Krabang', '6.30', '48', 40),
(263, 'Phayathai', 'Ban Thap Chang', '6.30', '48', 40),
(264, 'Phayathai', 'Hua Mak', '6.30', '48', 40),
(265, 'Phayathai', 'Ramkhamhaeng', '6.30', '48', 40),
(266, 'Phayathai', 'Makkasan - Phetburi', '6.30', '48', 40),
(267, 'Suvarnabhumi', 'Ban Thap Chang', '7.00', '48', 40),
(268, 'Suvarnabhumi', 'Hua Mak', '7.00', '48', 40),
(269, 'Suvarnabhumi', 'Ramkhamhaeng', '7.00', '48', 40),
(270, 'Suvarnabhumi', 'Makkasan - Phetburi', '7.00', '48', 40),
(271, 'Suvarnabhumi', 'Ratchaprarop', '7.00', '48', 40),
(272, 'Suvarnabhumi', 'Phayathai', '7.00', '48', 40),
(273, 'Lat Krabang', 'Hua Mak', '7.05', '48', 40),
(274, 'Lat Krabang', 'Ramkhamhaeng', '7.05', '48', 40),
(275, 'Lat Krabang', 'Makkasan - Phetburi', '7.05', '48', 40),
(276, 'Lat Krabang', 'Ratchaprarop', '7.05', '48', 40),
(277, 'Lat Krabang', 'Phayathai', '7.05', '48', 40),
(278, 'Ban Thap Chang', 'Ramkhamhaeng', '7.10', '48', 40),
(279, 'Ban Thap Chang', 'Makkasan - Phetburi', '7.10', '48', 40),
(280, 'Ban Thap Chang', 'Ratchaprarop', '7.10', '48', 40),
(281, 'Ban Thap Chang', 'Phayathai', '7.10', '48', 40),
(282, 'Ban Thap Chang', 'Suvarnabhumi', '7.55', '48', 40),
(283, 'Hua Mak', 'Suvarnabhumi', '7.50', '48', 40),
(284, 'Hua Mak', 'Lat Krabang', '7.50', '48', 40),
(285, 'Hua Mak', 'Makkasan - Phetburi', '7.15', '48', 40),
(286, 'Hua Mak', 'Ratchaprarop', '7.15', '48', 40),
(287, 'Hua Mak', 'Phayathai', '7.15', '48', 40),
(288, 'Ramkhamhaeng', 'Suvarnabhumi', '7.45', '48', 40),
(289, 'Ramkhamhaeng', 'Lat Krabang', '7.45', '48', 40),
(290, 'Ramkhamhaeng', 'Ban Thap Chang', '7.45', '48', 40),
(291, 'Ramkhamhaeng', 'Ratchaprarop', '7.20', '48', 40),
(292, 'Ramkhamhaeng', 'Phayathai', '7.20', '48', 40),
(293, 'Makkasan - Phetburi', 'Suvarnabhumi', '7.40', '48', 40),
(294, 'Makkasan - Phetburi', 'Lat Krabang', '7.40', '48', 40),
(295, 'Makkasan - Phetburi', 'Ban Thap Chang', '7.40', '48', 40),
(296, 'Makkasan - Phetburi', 'Hua Mak', '7.40', '48', 40),
(297, 'Makkasan - Phetburi', 'Phayathai', '7.25', '48', 40),
(298, 'Ratchaprarop', 'Suvarnabhumi', '7.35', '48', 40),
(299, 'Ratchaprarop', 'Lat Krabang', '7.35', '48', 40),
(300, 'Ratchaprarop', 'Ban Thap Chang', '7.35', '48', 40),
(301, 'Ratchaprarop', 'Hua Mak', '7.35', '48', 40),
(302, 'Ratchaprarop', 'Ramkhamhaeng', '7.35', '48', 40),
(303, 'Phayathai', 'Suvarnabhumi', '7.30', '48', 40),
(304, 'Phayathai', 'Lat Krabang', '7.30', '48', 40),
(305, 'Phayathai', 'Ban Thap Chang', '7.30', '48', 40),
(306, 'Phayathai', 'Hua Mak', '7.30', '48', 40),
(307, 'Phayathai', 'Ramkhamhaeng', '7.30', '48', 40),
(308, 'Phayathai', 'Makkasan - Phetburi', '7.30', '48', 40),
(309, 'Suvarnabhumi', 'Ban Thap Chang', '8.00', '48', 40),
(310, 'Suvarnabhumi', 'Hua Mak', '8.00', '48', 40),
(311, 'Suvarnabhumi', 'Ramkhamhaeng', '8.00', '48', 40),
(312, 'Suvarnabhumi', 'Makkasan - Phetburi', '8.00', '48', 40),
(313, 'Suvarnabhumi', 'Ratchaprarop', '8.00', '48', 40),
(314, 'Suvarnabhumi', 'Phayathai', '8.00', '48', 40),
(315, 'Lat Krabang', 'Hua Mak', '8.05', '48', 40),
(316, 'Lat Krabang', 'Ramkhamhaeng', '8.05', '48', 40),
(317, 'Lat Krabang', 'Makkasan - Phetburi', '8.05', '48', 40),
(318, 'Lat Krabang', 'Ratchaprarop', '8.05', '48', 40),
(319, 'Lat Krabang', 'Phayathai', '8.05', '48', 40),
(320, 'Ban Thap Chang', 'Ramkhamhaeng', '8.10', '48', 40),
(321, 'Ban Thap Chang', 'Makkasan - Phetburi', '8.10', '48', 40),
(322, 'Ban Thap Chang', 'Ratchaprarop', '8.10', '48', 40),
(323, 'Ban Thap Chang', 'Phayathai', '8.10', '48', 40),
(324, 'Ban Thap Chang', 'Suvarnabhumi', '8.55', '48', 40),
(325, 'Hua Mak', 'Suvarnabhumi', '8.50', '48', 40),
(326, 'Hua Mak', 'Lat Krabang', '8.50', '48', 40),
(327, 'Hua Mak', 'Makkasan - Phetburi', '8.15', '48', 40),
(328, 'Hua Mak', 'Ratchaprarop', '8.15', '48', 40),
(329, 'Hua Mak', 'Phayathai', '8.15', '48', 40),
(330, 'Ramkhamhaeng', 'Suvarnabhumi', '8.45', '48', 40),
(331, 'Ramkhamhaeng', 'Lat Krabang', '8.45', '48', 40),
(332, 'Ramkhamhaeng', 'Ban Thap Chang', '8.45', '48', 40),
(333, 'Ramkhamhaeng', 'Ratchaprarop', '8.20', '48', 40),
(334, 'Ramkhamhaeng', 'Phayathai', '8.20', '48', 40),
(335, 'Makkasan - Phetburi', 'Suvarnabhumi', '8.40', '48', 40),
(336, 'Makkasan - Phetburi', 'Lat Krabang', '8.40', '48', 40),
(337, 'Makkasan - Phetburi', 'Ban Thap Chang', '8.40', '48', 40),
(338, 'Makkasan - Phetburi', 'Hua Mak', '8.40', '48', 40),
(339, 'Makkasan - Phetburi', 'Phayathai', '8.25', '48', 40),
(340, 'Ratchaprarop', 'Suvarnabhumi', '8.35', '48', 40),
(341, 'Ratchaprarop', 'Lat Krabang', '8.35', '48', 40),
(342, 'Ratchaprarop', 'Ban Thap Chang', '8.35', '48', 40),
(343, 'Ratchaprarop', 'Hua Mak', '8.35', '48', 40),
(344, 'Ratchaprarop', 'Ramkhamhaeng', '8.35', '48', 40),
(345, 'Phayathai', 'Suvarnabhumi', '8.30', '48', 40),
(346, 'Phayathai', 'Lat Krabang', '8.30', '48', 40),
(347, 'Phayathai', 'Ban Thap Chang', '8.30', '48', 40),
(348, 'Phayathai', 'Hua Mak', '8.30', '48', 40),
(349, 'Phayathai', 'Ramkhamhaeng', '8.30', '48', 40),
(350, 'Phayathai', 'Makkasan - Phetburi', '8.30', '48', 40),
(351, 'Suvarnabhumi', 'Ban Thap Chang', '9.00', '48', 40),
(352, 'Suvarnabhumi', 'Hua Mak', '9.00', '48', 40),
(353, 'Suvarnabhumi', 'Ramkhamhaeng', '9.00', '48', 40),
(354, 'Suvarnabhumi', 'Makkasan - Phetburi', '9.00', '48', 40),
(355, 'Suvarnabhumi', 'Ratchaprarop', '9.00', '48', 40),
(356, 'Suvarnabhumi', 'Phayathai', '9.00', '48', 40),
(357, 'Lat Krabang', 'Hua Mak', '9.05', '48', 40),
(358, 'Lat Krabang', 'Ramkhamhaeng', '9.05', '48', 40),
(359, 'Lat Krabang', 'Makkasan - Phetburi', '9.05', '48', 40),
(360, 'Lat Krabang', 'Ratchaprarop', '9.05', '48', 40),
(361, 'Lat Krabang', 'Phayathai', '9.05', '48', 40),
(362, 'Ban Thap Chang', 'Ramkhamhaeng', '9.10', '48', 40),
(363, 'Ban Thap Chang', 'Makkasan - Phetburi', '9.10', '48', 40),
(364, 'Ban Thap Chang', 'Ratchaprarop', '9.10', '48', 40),
(365, 'Ban Thap Chang', 'Phayathai', '9.10', '48', 40),
(366, 'Ban Thap Chang', 'Suvarnabhumi', '9.55', '48', 40),
(367, 'Hua Mak', 'Suvarnabhumi', '9.50', '48', 40),
(368, 'Hua Mak', 'Lat Krabang', '9.50', '48', 40),
(369, 'Hua Mak', 'Makkasan - Phetburi', '9.15', '48', 40),
(370, 'Hua Mak', 'Ratchaprarop', '9.15', '48', 40),
(371, 'Hua Mak', 'Phayathai', '9.15', '48', 40),
(372, 'Ramkhamhaeng', 'Suvarnabhumi', '9.45', '48', 40),
(373, 'Ramkhamhaeng', 'Lat Krabang', '9.45', '48', 40),
(374, 'Ramkhamhaeng', 'Ban Thap Chang', '9.45', '48', 40),
(375, 'Ramkhamhaeng', 'Ratchaprarop', '9.20', '48', 40),
(376, 'Ramkhamhaeng', 'Phayathai', '9.20', '48', 40),
(377, 'Makkasan - Phetburi', 'Suvarnabhumi', '9.40', '48', 40),
(378, 'Makkasan - Phetburi', 'Lat Krabang', '9.40', '48', 40),
(379, 'Makkasan - Phetburi', 'Ban Thap Chang', '9.40', '48', 40),
(380, 'Makkasan - Phetburi', 'Hua Mak', '9.40', '48', 40),
(381, 'Makkasan - Phetburi', 'Phayathai', '9.25', '48', 40),
(382, 'Ratchaprarop', 'Suvarnabhumi', '9.35', '48', 40),
(383, 'Ratchaprarop', 'Lat Krabang', '9.35', '48', 40),
(384, 'Ratchaprarop', 'Ban Thap Chang', '9.35', '48', 40),
(385, 'Ratchaprarop', 'Hua Mak', '9.35', '48', 40),
(386, 'Ratchaprarop', 'Ramkhamhaeng', '9.35', '48', 40),
(387, 'Phayathai', 'Suvarnabhumi', '9.30', '48', 40),
(388, 'Phayathai', 'Lat Krabang', '9.30', '48', 40),
(389, 'Phayathai', 'Ban Thap Chang', '9.30', '48', 40),
(390, 'Phayathai', 'Hua Mak', '9.30', '48', 40),
(391, 'Phayathai', 'Ramkhamhaeng', '9.30', '48', 40),
(392, 'Phayathai', 'Makkasan - Phetburi', '9.30', '48', 40),
(393, 'Suvarnabhumi', 'Ban Thap Chang', '10.00', '48', 40),
(394, 'Suvarnabhumi', 'Hua Mak', '10.00', '48', 40),
(395, 'Suvarnabhumi', 'Ramkhamhaeng', '10.00', '48', 40),
(396, 'Suvarnabhumi', 'Makkasan - Phetburi', '10.00', '48', 40),
(397, 'Suvarnabhumi', 'Ratchaprarop', '10.00', '48', 40),
(398, 'Suvarnabhumi', 'Phayathai', '10.00', '48', 40),
(399, 'Lat Krabang', 'Hua Mak', '10.05', '48', 40),
(400, 'Lat Krabang', 'Ramkhamhaeng', '10.05', '48', 40),
(401, 'Lat Krabang', 'Makkasan - Phetburi', '10.05', '48', 40),
(402, 'Lat Krabang', 'Ratchaprarop', '10.05', '48', 40),
(403, 'Lat Krabang', 'Phayathai', '10.05', '48', 40),
(404, 'Ban Thap Chang', 'Ramkhamhaeng', '10.10', '48', 40),
(405, 'Ban Thap Chang', 'Makkasan - Phetburi', '10.10', '48', 40),
(406, 'Ban Thap Chang', 'Ratchaprarop', '10.10', '48', 40),
(407, 'Ban Thap Chang', 'Phayathai', '10.10', '48', 40),
(408, 'Ban Thap Chang', 'Suvarnabhumi', '10.55', '48', 40),
(409, 'Hua Mak', 'Suvarnabhumi', '10.50', '48', 40),
(410, 'Hua Mak', 'Lat Krabang', '10.50', '48', 40),
(411, 'Hua Mak', 'Makkasan - Phetburi', '10.15', '48', 40),
(412, 'Hua Mak', 'Ratchaprarop', '10.15', '48', 40),
(413, 'Hua Mak', 'Phayathai', '10.15', '48', 40),
(414, 'Ramkhamhaeng', 'Suvarnabhumi', '10.45', '48', 40),
(415, 'Ramkhamhaeng', 'Lat Krabang', '10.45', '48', 40),
(416, 'Ramkhamhaeng', 'Ban Thap Chang', '10.45', '48', 40),
(417, 'Ramkhamhaeng', 'Ratchaprarop', '10.20', '48', 40),
(418, 'Ramkhamhaeng', 'Phayathai', '10.20', '48', 40),
(419, 'Makkasan - Phetburi', 'Suvarnabhumi', '10.40', '48', 40),
(420, 'Makkasan - Phetburi', 'Lat Krabang', '10.40', '48', 40),
(421, 'Makkasan - Phetburi', 'Ban Thap Chang', '10.40', '48', 40),
(422, 'Makkasan - Phetburi', 'Hua Mak', '10.40', '48', 40),
(423, 'Makkasan - Phetburi', 'Phayathai', '10.25', '48', 40),
(424, 'Ratchaprarop', 'Suvarnabhumi', '10.35', '48', 40),
(425, 'Ratchaprarop', 'Lat Krabang', '10.35', '48', 40),
(426, 'Ratchaprarop', 'Ban Thap Chang', '10.35', '48', 40),
(427, 'Ratchaprarop', 'Hua Mak', '10.35', '48', 40),
(428, 'Ratchaprarop', 'Ramkhamhaeng', '10.35', '48', 40),
(429, 'Phayathai', 'Suvarnabhumi', '10.30', '48', 40),
(430, 'Phayathai', 'Lat Krabang', '10.30', '48', 40),
(431, 'Phayathai', 'Ban Thap Chang', '10.30', '48', 40),
(432, 'Phayathai', 'Hua Mak', '10.30', '48', 40),
(433, 'Phayathai', 'Ramkhamhaeng', '10.30', '48', 40),
(434, 'Phayathai', 'Makkasan - Phetburi', '10.30', '48', 40),
(435, 'Suvarnabhumi', 'Ban Thap Chang', '11.00', '48', 40),
(436, 'Suvarnabhumi', 'Hua Mak', '11.00', '48', 40),
(437, 'Suvarnabhumi', 'Ramkhamhaeng', '11.00', '48', 40),
(438, 'Suvarnabhumi', 'Makkasan - Phetburi', '11.00', '48', 40),
(439, 'Suvarnabhumi', 'Ratchaprarop', '11.00', '48', 40),
(440, 'Suvarnabhumi', 'Phayathai', '11.00', '48', 40),
(441, 'Lat Krabang', 'Hua Mak', '11.05', '48', 40),
(442, 'Lat Krabang', 'Ramkhamhaeng', '11.05', '48', 40),
(443, 'Lat Krabang', 'Makkasan - Phetburi', '11.05', '48', 40),
(444, 'Lat Krabang', 'Ratchaprarop', '11.05', '48', 40),
(445, 'Lat Krabang', 'Phayathai', '11.05', '48', 40),
(446, 'Ban Thap Chang', 'Ramkhamhaeng', '11.10', '48', 40),
(447, 'Ban Thap Chang', 'Makkasan - Phetburi', '11.10', '48', 40),
(448, 'Ban Thap Chang', 'Ratchaprarop', '11.10', '48', 40),
(449, 'Ban Thap Chang', 'Phayathai', '11.10', '48', 40),
(450, 'Ban Thap Chang', 'Suvarnabhumi', '11.55', '48', 40),
(451, 'Hua Mak', 'Suvarnabhumi', '11.50', '48', 40),
(452, 'Hua Mak', 'Lat Krabang', '11.50', '48', 40),
(453, 'Hua Mak', 'Makkasan - Phetburi', '11.15', '48', 40),
(454, 'Hua Mak', 'Ratchaprarop', '11.15', '48', 40),
(455, 'Hua Mak', 'Phayathai', '11.15', '48', 40),
(456, 'Ramkhamhaeng', 'Suvarnabhumi', '11.45', '48', 40),
(457, 'Ramkhamhaeng', 'Lat Krabang', '11.45', '48', 40),
(458, 'Ramkhamhaeng', 'Ban Thap Chang', '11.45', '48', 40),
(459, 'Ramkhamhaeng', 'Ratchaprarop', '11.20', '48', 40),
(460, 'Ramkhamhaeng', 'Phayathai', '11.20', '48', 40),
(461, 'Makkasan - Phetburi', 'Suvarnabhumi', '11.40', '48', 40),
(462, 'Makkasan - Phetburi', 'Lat Krabang', '11.40', '48', 40),
(463, 'Makkasan - Phetburi', 'Ban Thap Chang', '11.40', '48', 40),
(464, 'Makkasan - Phetburi', 'Hua Mak', '11.40', '48', 40),
(465, 'Makkasan - Phetburi', 'Phayathai', '11.25', '48', 40),
(466, 'Ratchaprarop', 'Suvarnabhumi', '11.35', '48', 40),
(467, 'Ratchaprarop', 'Lat Krabang', '11.35', '48', 40),
(468, 'Ratchaprarop', 'Ban Thap Chang', '11.35', '48', 40),
(469, 'Ratchaprarop', 'Hua Mak', '11.35', '48', 40),
(470, 'Ratchaprarop', 'Ramkhamhaeng', '11.35', '48', 40),
(471, 'Phayathai', 'Suvarnabhumi', '11.30', '48', 40),
(472, 'Phayathai', 'Lat Krabang', '11.30', '48', 40),
(473, 'Phayathai', 'Ban Thap Chang', '11.30', '48', 40),
(474, 'Phayathai', 'Hua Mak', '11.30', '48', 40),
(475, 'Phayathai', 'Ramkhamhaeng', '11.30', '48', 40),
(476, 'Phayathai', 'Makkasan - Phetburi', '11.30', '48', 40),
(477, 'Suvarnabhumi', 'Ban Thap Chang', '12.00', '48', 40),
(478, 'Suvarnabhumi', 'Hua Mak', '12.00', '48', 40),
(479, 'Suvarnabhumi', 'Ramkhamhaeng', '12.00', '48', 40),
(480, 'Suvarnabhumi', 'Makkasan - Phetburi', '12.00', '48', 40),
(481, 'Suvarnabhumi', 'Ratchaprarop', '12.00', '48', 40),
(482, 'Suvarnabhumi', 'Phayathai', '12.00', '48', 40),
(483, 'Lat Krabang', 'Hua Mak', '12.05', '48', 40),
(484, 'Lat Krabang', 'Ramkhamhaeng', '12.05', '48', 40),
(485, 'Lat Krabang', 'Makkasan - Phetburi', '12.05', '48', 40),
(486, 'Lat Krabang', 'Ratchaprarop', '12.05', '48', 40),
(487, 'Lat Krabang', 'Phayathai', '12.05', '48', 40),
(488, 'Ban Thap Chang', 'Ramkhamhaeng', '12.10', '48', 40),
(489, 'Ban Thap Chang', 'Makkasan - Phetburi', '12.10', '48', 40),
(490, 'Ban Thap Chang', 'Ratchaprarop', '12.10', '48', 40),
(491, 'Ban Thap Chang', 'Phayathai', '12.10', '48', 40),
(492, 'Ban Thap Chang', 'Suvarnabhumi', '12.55', '48', 40),
(493, 'Hua Mak', 'Suvarnabhumi', '12.50', '48', 40),
(494, 'Hua Mak', 'Lat Krabang', '12.50', '48', 40),
(495, 'Hua Mak', 'Makkasan - Phetburi', '12.15', '48', 40),
(496, 'Hua Mak', 'Ratchaprarop', '12.15', '48', 40),
(497, 'Hua Mak', 'Phayathai', '12.15', '48', 40),
(498, 'Ramkhamhaeng', 'Suvarnabhumi', '12.45', '48', 40),
(499, 'Ramkhamhaeng', 'Lat Krabang', '12.45', '48', 40),
(500, 'Ramkhamhaeng', 'Ban Thap Chang', '12.45', '48', 40),
(501, 'Ramkhamhaeng', 'Ratchaprarop', '12.20', '48', 40),
(502, 'Ramkhamhaeng', 'Phayathai', '12.20', '48', 40),
(503, 'Makkasan - Phetburi', 'Suvarnabhumi', '12.40', '48', 40),
(504, 'Makkasan - Phetburi', 'Lat Krabang', '12.40', '48', 40),
(505, 'Makkasan - Phetburi', 'Ban Thap Chang', '12.40', '48', 40),
(506, 'Makkasan - Phetburi', 'Hua Mak', '12.40', '48', 40),
(507, 'Makkasan - Phetburi', 'Phayathai', '12.25', '48', 40),
(508, 'Ratchaprarop', 'Suvarnabhumi', '12.35', '48', 40),
(509, 'Ratchaprarop', 'Lat Krabang', '12.35', '48', 40),
(510, 'Ratchaprarop', 'Ban Thap Chang', '12.35', '48', 40),
(511, 'Ratchaprarop', 'Hua Mak', '12.35', '48', 40),
(512, 'Ratchaprarop', 'Ramkhamhaeng', '12.35', '48', 40),
(513, 'Phayathai', 'Suvarnabhumi', '12.30', '48', 40),
(514, 'Phayathai', 'Lat Krabang', '12.30', '48', 40),
(515, 'Phayathai', 'Ban Thap Chang', '12.30', '48', 40),
(516, 'Phayathai', 'Hua Mak', '12.30', '48', 40),
(517, 'Phayathai', 'Ramkhamhaeng', '12.30', '48', 40),
(518, 'Phayathai', 'Makkasan - Phetburi', '12.30', '48', 40),
(519, 'Suvarnabhumi', 'Ban Thap Chang', '13.00', '48', 40),
(520, 'Suvarnabhumi', 'Hua Mak', '13.00', '48', 40),
(521, 'Suvarnabhumi', 'Ramkhamhaeng', '13.00', '48', 40),
(522, 'Suvarnabhumi', 'Makkasan - Phetburi', '13.00', '48', 40),
(523, 'Suvarnabhumi', 'Ratchaprarop', '13.00', '48', 40),
(524, 'Suvarnabhumi', 'Phayathai', '13.00', '48', 40),
(525, 'Lat Krabang', 'Hua Mak', '13.05', '48', 40),
(526, 'Lat Krabang', 'Ramkhamhaeng', '13.05', '48', 40),
(527, 'Lat Krabang', 'Makkasan - Phetburi', '13.05', '48', 40),
(528, 'Lat Krabang', 'Ratchaprarop', '13.05', '48', 40),
(529, 'Lat Krabang', 'Phayathai', '13.05', '48', 40),
(530, 'Ban Thap Chang', 'Ramkhamhaeng', '13.10', '48', 40),
(531, 'Ban Thap Chang', 'Makkasan - Phetburi', '13.10', '48', 40),
(532, 'Ban Thap Chang', 'Ratchaprarop', '13.10', '48', 40),
(533, 'Ban Thap Chang', 'Phayathai', '13.10', '48', 40),
(534, 'Ban Thap Chang', 'Suvarnabhumi', '13.55', '48', 40),
(535, 'Hua Mak', 'Suvarnabhumi', '13.50', '48', 40),
(536, 'Hua Mak', 'Lat Krabang', '13.50', '48', 40),
(537, 'Hua Mak', 'Makkasan - Phetburi', '13.15', '48', 40),
(538, 'Hua Mak', 'Ratchaprarop', '13.15', '48', 40),
(539, 'Hua Mak', 'Phayathai', '13.15', '48', 40),
(540, 'Ramkhamhaeng', 'Suvarnabhumi', '13.45', '48', 40),
(541, 'Ramkhamhaeng', 'Lat Krabang', '13.45', '48', 40),
(542, 'Ramkhamhaeng', 'Ban Thap Chang', '13.45', '48', 40),
(543, 'Ramkhamhaeng', 'Ratchaprarop', '13.20', '48', 40),
(544, 'Ramkhamhaeng', 'Phayathai', '13.20', '48', 40),
(545, 'Makkasan - Phetburi', 'Suvarnabhumi', '13.40', '48', 40),
(546, 'Makkasan - Phetburi', 'Lat Krabang', '13.40', '48', 40),
(547, 'Makkasan - Phetburi', 'Ban Thap Chang', '13.40', '48', 40),
(548, 'Makkasan - Phetburi', 'Hua Mak', '13.40', '48', 40),
(549, 'Makkasan - Phetburi', 'Phayathai', '13.25', '48', 40),
(550, 'Ratchaprarop', 'Suvarnabhumi', '13.35', '48', 40),
(551, 'Ratchaprarop', 'Lat Krabang', '13.35', '48', 40),
(552, 'Ratchaprarop', 'Ban Thap Chang', '13.35', '48', 40),
(553, 'Ratchaprarop', 'Hua Mak', '13.35', '48', 40),
(554, 'Ratchaprarop', 'Ramkhamhaeng', '13.35', '48', 40),
(555, 'Phayathai', 'Suvarnabhumi', '13.30', '48', 40),
(556, 'Phayathai', 'Lat Krabang', '13.30', '48', 40),
(557, 'Phayathai', 'Ban Thap Chang', '13.30', '48', 40),
(558, 'Phayathai', 'Hua Mak', '13.30', '48', 40),
(559, 'Phayathai', 'Ramkhamhaeng', '13.30', '48', 40),
(560, 'Phayathai', 'Makkasan - Phetburi', '13.30', '48', 40),
(561, 'Suvarnabhumi', 'Ban Thap Chang', '14.00', '48', 40),
(562, 'Suvarnabhumi', 'Hua Mak', '14.00', '48', 40),
(563, 'Suvarnabhumi', 'Ramkhamhaeng', '14.00', '48', 40),
(564, 'Suvarnabhumi', 'Makkasan - Phetburi', '14.00', '48', 40),
(565, 'Suvarnabhumi', 'Ratchaprarop', '14.00', '48', 40),
(566, 'Suvarnabhumi', 'Phayathai', '14.00', '48', 40),
(567, 'Lat Krabang', 'Hua Mak', '14.05', '48', 40),
(568, 'Lat Krabang', 'Ramkhamhaeng', '14.05', '48', 40),
(569, 'Lat Krabang', 'Makkasan - Phetburi', '14.05', '48', 40),
(570, 'Lat Krabang', 'Ratchaprarop', '14.05', '48', 40),
(571, 'Lat Krabang', 'Phayathai', '14.05', '48', 40),
(572, 'Ban Thap Chang', 'Ramkhamhaeng', '14.10', '48', 40),
(573, 'Ban Thap Chang', 'Makkasan - Phetburi', '14.10', '48', 40),
(574, 'Ban Thap Chang', 'Ratchaprarop', '14.10', '48', 40),
(575, 'Ban Thap Chang', 'Phayathai', '14.10', '48', 40),
(576, 'Ban Thap Chang', 'Suvarnabhumi', '14.55', '48', 40),
(577, 'Hua Mak', 'Suvarnabhumi', '14.50', '48', 40),
(578, 'Hua Mak', 'Lat Krabang', '14.50', '48', 40),
(579, 'Hua Mak', 'Makkasan - Phetburi', '14.15', '48', 40),
(580, 'Hua Mak', 'Ratchaprarop', '14.15', '48', 40),
(581, 'Hua Mak', 'Phayathai', '14.15', '48', 40),
(582, 'Ramkhamhaeng', 'Suvarnabhumi', '14.45', '48', 40),
(583, 'Ramkhamhaeng', 'Lat Krabang', '14.45', '48', 40),
(584, 'Ramkhamhaeng', 'Ban Thap Chang', '14.45', '48', 40),
(585, 'Ramkhamhaeng', 'Ratchaprarop', '14.20', '48', 40),
(586, 'Ramkhamhaeng', 'Phayathai', '14.20', '48', 40),
(587, 'Makkasan - Phetburi', 'Suvarnabhumi', '14.40', '48', 40),
(588, 'Makkasan - Phetburi', 'Lat Krabang', '14.40', '48', 40),
(589, 'Makkasan - Phetburi', 'Ban Thap Chang', '14.40', '48', 40),
(590, 'Makkasan - Phetburi', 'Hua Mak', '14.40', '48', 40),
(591, 'Makkasan - Phetburi', 'Phayathai', '14.25', '48', 40),
(592, 'Ratchaprarop', 'Suvarnabhumi', '14.35', '48', 40),
(593, 'Ratchaprarop', 'Lat Krabang', '14.35', '48', 40),
(594, 'Ratchaprarop', 'Ban Thap Chang', '14.35', '48', 40),
(595, 'Ratchaprarop', 'Hua Mak', '14.35', '48', 40),
(596, 'Ratchaprarop', 'Ramkhamhaeng', '14.35', '48', 40),
(597, 'Phayathai', 'Suvarnabhumi', '14.30', '48', 40),
(598, 'Phayathai', 'Lat Krabang', '14.30', '48', 40),
(599, 'Phayathai', 'Ban Thap Chang', '14.30', '48', 40),
(600, 'Phayathai', 'Hua Mak', '14.30', '48', 40),
(601, 'Phayathai', 'Ramkhamhaeng', '14.30', '48', 40),
(602, 'Phayathai', 'Makkasan - Phetburi', '14.30', '48', 40),
(603, 'Suvarnabhumi', 'Ban Thap Chang', '15.00', '48', 40),
(604, 'Suvarnabhumi', 'Hua Mak', '15.00', '48', 40),
(605, 'Suvarnabhumi', 'Ramkhamhaeng', '15.00', '48', 40),
(606, 'Suvarnabhumi', 'Makkasan - Phetburi', '15.00', '48', 40),
(607, 'Suvarnabhumi', 'Ratchaprarop', '15.00', '48', 40),
(608, 'Suvarnabhumi', 'Phayathai', '15.00', '48', 40),
(609, 'Lat Krabang', 'Hua Mak', '15.05', '48', 40),
(610, 'Lat Krabang', 'Ramkhamhaeng', '15.05', '48', 40),
(611, 'Lat Krabang', 'Makkasan - Phetburi', '15.05', '48', 40),
(612, 'Lat Krabang', 'Ratchaprarop', '15.05', '48', 40),
(613, 'Lat Krabang', 'Phayathai', '15.05', '48', 40),
(614, 'Ban Thap Chang', 'Ramkhamhaeng', '15.10', '48', 40),
(615, 'Ban Thap Chang', 'Makkasan - Phetburi', '15.10', '48', 40),
(616, 'Ban Thap Chang', 'Ratchaprarop', '15.10', '48', 40),
(617, 'Ban Thap Chang', 'Phayathai', '15.10', '48', 40),
(618, 'Ban Thap Chang', 'Suvarnabhumi', '15.55', '48', 40),
(619, 'Hua Mak', 'Suvarnabhumi', '15.50', '48', 40),
(620, 'Hua Mak', 'Lat Krabang', '15.50', '48', 40),
(621, 'Hua Mak', 'Makkasan - Phetburi', '15.15', '48', 40),
(622, 'Hua Mak', 'Ratchaprarop', '15.15', '48', 40),
(623, 'Hua Mak', 'Phayathai', '15.15', '48', 40),
(624, 'Ramkhamhaeng', 'Suvarnabhumi', '15.45', '48', 40),
(625, 'Ramkhamhaeng', 'Lat Krabang', '15.45', '48', 40),
(626, 'Ramkhamhaeng', 'Ban Thap Chang', '15.45', '48', 40),
(627, 'Ramkhamhaeng', 'Ratchaprarop', '15.20', '48', 40),
(628, 'Ramkhamhaeng', 'Phayathai', '15.20', '48', 40),
(629, 'Makkasan - Phetburi', 'Suvarnabhumi', '15.40', '48', 40),
(630, 'Makkasan - Phetburi', 'Lat Krabang', '15.40', '48', 40),
(631, 'Makkasan - Phetburi', 'Ban Thap Chang', '15.40', '48', 40),
(632, 'Makkasan - Phetburi', 'Hua Mak', '15.40', '48', 40),
(633, 'Makkasan - Phetburi', 'Phayathai', '15.25', '48', 40),
(634, 'Ratchaprarop', 'Suvarnabhumi', '15.35', '48', 40),
(635, 'Ratchaprarop', 'Lat Krabang', '15.35', '48', 40),
(636, 'Ratchaprarop', 'Ban Thap Chang', '15.35', '48', 40),
(637, 'Ratchaprarop', 'Hua Mak', '15.35', '48', 40),
(638, 'Ratchaprarop', 'Ramkhamhaeng', '15.35', '48', 40),
(639, 'Phayathai', 'Suvarnabhumi', '15.30', '48', 40),
(640, 'Phayathai', 'Lat Krabang', '15.30', '48', 40),
(641, 'Phayathai', 'Ban Thap Chang', '15.30', '48', 40),
(642, 'Phayathai', 'Hua Mak', '15.30', '48', 40),
(643, 'Phayathai', 'Ramkhamhaeng', '15.30', '48', 40),
(644, 'Phayathai', 'Makkasan - Phetburi', '15.30', '48', 40),
(645, 'Suvarnabhumi', 'Ban Thap Chang', '16.00', '48', 40),
(646, 'Suvarnabhumi', 'Hua Mak', '16.00', '48', 40),
(647, 'Suvarnabhumi', 'Ramkhamhaeng', '16.00', '48', 40),
(648, 'Suvarnabhumi', 'Makkasan - Phetburi', '16.00', '48', 40),
(649, 'Suvarnabhumi', 'Ratchaprarop', '16.00', '48', 40),
(650, 'Suvarnabhumi', 'Phayathai', '16.00', '48', 40),
(651, 'Lat Krabang', 'Hua Mak', '16.05', '48', 40),
(652, 'Lat Krabang', 'Ramkhamhaeng', '16.05', '48', 40),
(653, 'Lat Krabang', 'Makkasan - Phetburi', '16.05', '48', 40),
(654, 'Lat Krabang', 'Ratchaprarop', '16.05', '48', 40),
(655, 'Lat Krabang', 'Phayathai', '16.05', '48', 40),
(656, 'Ban Thap Chang', 'Ramkhamhaeng', '16.10', '48', 40),
(657, 'Ban Thap Chang', 'Makkasan - Phetburi', '16.10', '48', 40),
(658, 'Ban Thap Chang', 'Ratchaprarop', '16.10', '48', 40),
(659, 'Ban Thap Chang', 'Phayathai', '16.10', '48', 40),
(660, 'Ban Thap Chang', 'Suvarnabhumi', '16.55', '48', 40),
(661, 'Hua Mak', 'Suvarnabhumi', '16.50', '48', 40),
(662, 'Hua Mak', 'Lat Krabang', '16.50', '48', 40),
(663, 'Hua Mak', 'Makkasan - Phetburi', '16.15', '48', 40),
(664, 'Hua Mak', 'Ratchaprarop', '16.15', '48', 40),
(665, 'Hua Mak', 'Phayathai', '16.15', '48', 40),
(666, 'Ramkhamhaeng', 'Suvarnabhumi', '16.45', '48', 40),
(667, 'Ramkhamhaeng', 'Lat Krabang', '16.45', '48', 40),
(668, 'Ramkhamhaeng', 'Ban Thap Chang', '16.45', '48', 40),
(669, 'Ramkhamhaeng', 'Ratchaprarop', '16.20', '48', 40),
(670, 'Ramkhamhaeng', 'Phayathai', '16.20', '48', 40),
(671, 'Makkasan - Phetburi', 'Suvarnabhumi', '16.40', '48', 40),
(672, 'Makkasan - Phetburi', 'Lat Krabang', '16.40', '48', 40),
(673, 'Makkasan - Phetburi', 'Ban Thap Chang', '16.40', '48', 40),
(674, 'Makkasan - Phetburi', 'Hua Mak', '16.40', '48', 40),
(675, 'Makkasan - Phetburi', 'Phayathai', '16.25', '48', 40),
(676, 'Ratchaprarop', 'Suvarnabhumi', '16.35', '48', 40),
(677, 'Ratchaprarop', 'Lat Krabang', '16.35', '48', 40),
(678, 'Ratchaprarop', 'Ban Thap Chang', '16.35', '48', 40),
(679, 'Ratchaprarop', 'Hua Mak', '16.35', '48', 40),
(680, 'Ratchaprarop', 'Ramkhamhaeng', '16.35', '48', 40),
(681, 'Phayathai', 'Suvarnabhumi', '16.30', '48', 40),
(682, 'Phayathai', 'Lat Krabang', '16.30', '48', 40),
(683, 'Phayathai', 'Ban Thap Chang', '16.30', '48', 40),
(684, 'Phayathai', 'Hua Mak', '16.30', '48', 40),
(685, 'Phayathai', 'Ramkhamhaeng', '16.30', '48', 40),
(686, 'Phayathai', 'Makkasan - Phetburi', '16.30', '48', 40),
(687, 'Suvarnabhumi', 'Ban Thap Chang', '17.00', '48', 40),
(688, 'Suvarnabhumi', 'Hua Mak', '17.00', '48', 40),
(689, 'Suvarnabhumi', 'Ramkhamhaeng', '17.00', '48', 40),
(690, 'Suvarnabhumi', 'Makkasan - Phetburi', '17.00', '48', 40),
(691, 'Suvarnabhumi', 'Ratchaprarop', '17.00', '48', 40),
(692, 'Suvarnabhumi', 'Phayathai', '17.00', '48', 40),
(693, 'Lat Krabang', 'Hua Mak', '17.05', '48', 40),
(694, 'Lat Krabang', 'Ramkhamhaeng', '17.05', '48', 40),
(695, 'Lat Krabang', 'Makkasan - Phetburi', '17.05', '48', 40),
(696, 'Lat Krabang', 'Ratchaprarop', '17.05', '48', 40),
(697, 'Lat Krabang', 'Phayathai', '17.05', '48', 40),
(698, 'Ban Thap Chang', 'Ramkhamhaeng', '17.10', '48', 40),
(699, 'Ban Thap Chang', 'Makkasan - Phetburi', '17.10', '48', 40),
(700, 'Ban Thap Chang', 'Ratchaprarop', '17.10', '48', 40),
(701, 'Ban Thap Chang', 'Phayathai', '17.10', '48', 40),
(702, 'Ban Thap Chang', 'Suvarnabhumi', '17.55', '48', 40),
(703, 'Hua Mak', 'Suvarnabhumi', '17.50', '48', 40),
(704, 'Hua Mak', 'Lat Krabang', '17.50', '48', 40),
(705, 'Hua Mak', 'Makkasan - Phetburi', '17.15', '48', 40),
(706, 'Hua Mak', 'Ratchaprarop', '17.15', '48', 40),
(707, 'Hua Mak', 'Phayathai', '17.15', '48', 40),
(708, 'Ramkhamhaeng', 'Suvarnabhumi', '17.45', '48', 40),
(709, 'Ramkhamhaeng', 'Lat Krabang', '17.45', '48', 40),
(710, 'Ramkhamhaeng', 'Ban Thap Chang', '17.45', '48', 40),
(711, 'Ramkhamhaeng', 'Ratchaprarop', '17.20', '48', 40),
(712, 'Ramkhamhaeng', 'Phayathai', '17.20', '48', 40),
(713, 'Makkasan - Phetburi', 'Suvarnabhumi', '17.40', '48', 40),
(714, 'Makkasan - Phetburi', 'Lat Krabang', '17.40', '48', 40),
(715, 'Makkasan - Phetburi', 'Ban Thap Chang', '17.40', '48', 40),
(716, 'Makkasan - Phetburi', 'Hua Mak', '17.40', '48', 40),
(717, 'Makkasan - Phetburi', 'Phayathai', '17.25', '48', 40),
(718, 'Ratchaprarop', 'Suvarnabhumi', '17.35', '48', 40),
(719, 'Ratchaprarop', 'Lat Krabang', '17.35', '48', 40),
(720, 'Ratchaprarop', 'Ban Thap Chang', '17.35', '48', 40),
(721, 'Ratchaprarop', 'Hua Mak', '17.35', '48', 40),
(722, 'Ratchaprarop', 'Ramkhamhaeng', '17.35', '48', 40),
(723, 'Phayathai', 'Suvarnabhumi', '17.30', '48', 40),
(724, 'Phayathai', 'Lat Krabang', '17.30', '48', 40),
(725, 'Phayathai', 'Ban Thap Chang', '17.30', '48', 40),
(726, 'Phayathai', 'Hua Mak', '17.30', '48', 40),
(727, 'Phayathai', 'Ramkhamhaeng', '17.30', '48', 40),
(728, 'Phayathai', 'Makkasan - Phetburi', '17.30', '48', 40);

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_detail` text NOT NULL,
  `s_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`s_id`, `s_name`, `s_detail`, `s_img`) VALUES
(37, 'สถานีลาดกระบัง', 'สถานีบ้านทับช้างสถานีบ้านทับช้างสถานีบ้านทับช้างสถานีบ้านทับช้าง', '20201123-1772326200.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `id_train` int(11) NOT NULL,
  `train_no` varchar(100) NOT NULL,
  `train_datetime` varchar(100) NOT NULL,
  `train_hour` varchar(100) NOT NULL,
  `train_min` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `s_id` int(11) NOT NULL,
  `s_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`id_train`, `train_no`, `train_datetime`, `train_hour`, `train_min`, `price`, `s_id`, `s_name`) VALUES
(8, 'A001', '2020-11-26', '5', '30', '', 37, ''),
(10, 'AA003', '2020-11-26', '5', '40', '', 37, ''),
(11, 'AA003', '2020-11-26', '5', '46', '', 37, ''),
(12, 'AA004', '2020-11-27', '6', '50', '', 39, ''),
(13, 'TA8496', '2020-11-27', '12', '30', '', 39, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `status_m` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `tel`, `status_m`) VALUES
(14, 'tum', '81dc9bdb52d04dc20036dbd8313ed055', 'tumm@gmail.com', '1234567895', 1),
(17, 'james', '81dc9bdb52d04dc20036dbd8313ed055', 'devilkung52@gmail.com', '943130402', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `booking_2`
--
ALTER TABLE `booking_2`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `order_tb`
--
ALTER TABLE `order_tb`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `schdule`
--
ALTER TABLE `schdule`
  ADD PRIMARY KEY (`schdule_id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`id_train`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `booking_2`
--
ALTER TABLE `booking_2`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_tb`
--
ALTER TABLE `order_tb`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `schdule`
--
ALTER TABLE `schdule`
  MODIFY `schdule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=729;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `id_train` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_tb`
--
ALTER TABLE `order_tb`
  ADD CONSTRAINT `order_tb_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `order_tb_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `train` (`id_train`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
