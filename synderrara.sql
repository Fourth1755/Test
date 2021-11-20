-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2021 at 09:16 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `synderrara`
--
CREATE DATABASE IF NOT EXISTS `synderrara` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `synderrara`;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `countryID` int(11) NOT NULL,
  `countryName` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`countryID`, `countryName`) VALUES
(1, 'India'),
(2, 'Indonesia'),
(3, 'Philippines'),
(4, 'Thailand');

-- --------------------------------------------------------

--
-- Table structure for table `countryadmin`
--

CREATE TABLE `countryadmin` (
  `userID` int(11) NOT NULL,
  `countryID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countryadmin`
--

INSERT INTO `countryadmin` (`userID`, `countryID`, `create_date`) VALUES
(1, 1, '2021-11-05 07:42:03'),
(8, 3, '2021-11-05 07:42:47'),
(1, 4, '2021-11-05 07:42:15'),
(7, 4, '2021-11-05 07:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `ear`
--

CREATE TABLE `ear` (
  `cornID` int(11) NOT NULL,
  `plotID` int(11) NOT NULL,
  `earImgPath` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `earImgPathS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DER_rate_A` int(11) DEFAULT NULL,
  `DER_rate_M` int(11) DEFAULT NULL,
  `DER_percent_A` float DEFAULT NULL,
  `DER_percent_M` float DEFAULT NULL,
  `imgPosX` int(11) DEFAULT NULL,
  `imgPosY` int(11) DEFAULT NULL,
  `imgWidth` int(11) DEFAULT NULL,
  `imgHeigh` int(11) DEFAULT NULL,
  `cornDetectType` enum('Auto','Manual') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Auto' COMMENT '1-auto detect 2-manual  :rating type for compute DER rate',
  `earProgress` enum('Waiting','Approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Waiting' COMMENT '1-notApprove 2-Approved',
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ear`
--

INSERT INTO `ear` (`cornID`, `plotID`, `earImgPath`, `earImgPathS`, `DER_rate_A`, `DER_rate_M`, `DER_percent_A`, `DER_percent_M`, `imgPosX`, `imgPosY`, `imgWidth`, `imgHeigh`, `cornDetectType`, `earProgress`, `last_update`) VALUES
(1, 4, 'img', 'imgs', 1, 2, 2, 2, 2, 2, 3, 3, 'Auto', 'Waiting', '2021-11-05 08:12:49'),
(2, 12, 'img', 'imgs', 3, 8, 3, 3, 3, 4, 5, 6, 'Auto', 'Waiting', '2021-11-05 08:14:00'),
(3, 13, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:15:34'),
(4, 12, 'img', 'imgs', 3, 8, 3, 3, 3, 4, 5, 6, 'Auto', 'Waiting', '2021-11-05 08:14:11'),
(5, 2, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:15:26'),
(6, 12, 'img', 'imgs', 3, 8, 3, 3, 3, 4, 5, 6, 'Auto', 'Waiting', '2021-11-05 08:14:44'),
(7, 2, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:15:43'),
(8, 2, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:16:55'),
(9, 2, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:15:40'),
(10, 3, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:16:52'),
(11, 3, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:16:48'),
(12, 6, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:14:44'),
(13, 6, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:14:44'),
(14, 2, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:15:47'),
(15, 2, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:16:45'),
(16, 13, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:17:09'),
(17, 2, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:16:21'),
(18, 3, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:16:58'),
(19, 2, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:16:42'),
(20, 3, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:16:11'),
(21, 4, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:16:08'),
(22, 6, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:14:44'),
(23, 2, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:15:52'),
(24, 6, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:17:14'),
(25, 6, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:14:44'),
(26, 6, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:14:44'),
(27, 4, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:16:03'),
(28, 3, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:16:00'),
(29, 6, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:14:44'),
(30, 6, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:14:44'),
(31, 6, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:14:44'),
(32, 6, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:14:44'),
(33, 6, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:14:44'),
(34, 6, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:14:44'),
(35, 6, 'img', 'imgs', 6, 6, 12, 21, 2, 2, 3, 5, 'Auto', 'Waiting', '2021-11-05 08:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `plot`
--

CREATE TABLE `plot` (
  `plotID` int(11) NOT NULL,
  `barcode` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `trialID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pltID` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `repNo` int(11) NOT NULL,
  `ABBRC` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTNO` int(11) DEFAULT NULL COMMENT 'entry number',
  `NOTET` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Note',
  `plotImgPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plotImgPathS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plotImgBoxPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plotImgBoxPathS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploadBy` int(11) DEFAULT NULL,
  `uploadDate` datetime DEFAULT NULL,
  `EARTN_A` int(11) DEFAULT NULL COMMENT 'auto_total number of ear',
  `DLERN_A` int(11) DEFAULT NULL COMMENT 'auto_diplodia ear rot number',
  `DLERP_A` float DEFAULT NULL COMMENT 'auto_diplodia ear rot percent',
  `DRWAP_A` float DEFAULT NULL COMMENT 'auto_diplodia ear rot weight average percentage use by pathologist',
  `EARTN_M` int(11) DEFAULT NULL COMMENT 'manual_total number of ear',
  `DLERN_M` int(11) DEFAULT NULL COMMENT 'manual_diplodia ear rot number',
  `DLERP_M` float DEFAULT NULL COMMENT 'manual_diplodia ear rot percent',
  `DRWAP_M` float DEFAULT NULL COMMENT 'manual_diplodia ear rot weight average percentage use by pathologist',
  `approveBy` int(11) DEFAULT NULL,
  `approveDate` datetime DEFAULT NULL,
  `plotProgress` enum('Empty','Uploaded','Approved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Empty' COMMENT '1-noImg 2-uploaded 3-approved',
  `plotStatus` enum('Open','Lock Upload','Lock Approve') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Open' COMMENT '1-open 2-lockUpload 3-lockApprove',
  `plotActive` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active' COMMENT '0-inactive 1-active',
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plot`
--

INSERT INTO `plot` (`plotID`, `barcode`, `trialID`, `pltID`, `repNo`, `ABBRC`, `ENTNO`, `NOTET`, `plotImgPath`, `plotImgPathS`, `plotImgBoxPath`, `plotImgBoxPathS`, `uploadBy`, `uploadDate`, `EARTN_A`, `DLERN_A`, `DLERP_A`, `DRWAP_A`, `EARTN_M`, `DLERN_M`, `DLERP_M`, `DRWAP_M`, `approveBy`, `approveDate`, `plotProgress`, `plotStatus`, `plotActive`, `last_update`) VALUES
(2, '1111111', 't001', 'p001', 1, 'abc001', 1, 'Note', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Empty', 'Open', 'Inactive', '2021-11-05 06:49:02'),
(3, 'bc001', 't001', 'aaa', 1, 'abbrc', 1, 'note1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Empty', 'Open', 'Active', '2021-11-05 19:25:51'),
(4, '112233', 't001', 'aa', 1, 'aa', 2, 'sdf', 'path', 'pathSmall', 'boxPath', 'boxPathSmall', 7, '2021-11-24 14:57:50', 1, 1, 1.2, 1.2, 3, 3, 5, 5, 7, '2021-11-29 14:57:50', 'Uploaded', 'Open', 'Inactive', '2021-11-05 19:32:14'),
(5, 'bsdflkjd', 'Trial12345', 'sd', 1, 'sd', 5, 'sdf', NULL, NULL, NULL, NULL, 8, '2021-11-24 14:57:50', 3, 3, 3, 3, 3, 3, 3, 3, 9, '2021-11-29 14:57:50', 'Approved', 'Lock Upload', 'Active', '2021-11-05 08:02:57'),
(6, 'sdf', 'Trial12345', 'aaa', 1, 'dsfg', 1, 'dsdf', 'sdf', 'sfd', 'sdf', 'ssdf', 8, '2021-11-24 14:57:50', 1, 1, 1, 1, 1, 1, 1, 1, 9, '2021-11-29 14:57:50', 'Approved', 'Lock Upload', 'Active', '2021-11-05 08:06:18'),
(8, 'wert', 'Trial112233', 'aaa', 1, 'dsfg', 1, 'dsdf', 'sdf', 'sfd', 'sdf', 'ssdf', 8, '2021-11-24 14:57:50', 1, 1, 1, 1, 1, 1, 1, 1, 9, '2021-11-29 14:57:50', 'Approved', 'Lock Approve', 'Active', '2021-11-05 08:08:27'),
(9, 'sdfwer', 'ABC', 'aaa', 1, 'dsfg', 1, 'dsdf', 'sdf', 'sfd', 'sdf', 'ssdf', 8, '2021-11-24 14:57:50', 1, 1, 1, 1, 1, 1, 1, 1, 9, '2021-11-29 14:57:50', 'Approved', 'Lock Upload', 'Active', '2021-11-05 08:06:23'),
(11, 'rty', 'Trial112233', 'aaa', 1, 'dsfg', 1, 'dsdf', 'sdf', 'sfd', 'sdf', 'wertery', 8, '2021-11-24 14:57:50', 1, 1, 1, 1, 1, 1, 1, 1, 9, '2021-11-29 14:57:50', 'Approved', 'Lock Upload', 'Active', '2021-11-05 08:05:33'),
(12, 'rtu', 'Trial112233', 'aaa', 1, 'dsfg', 1, 'dsdf', 'sdf', 'sfd', 'sdf', 'ssdf', 8, '2021-11-24 14:57:50', 1, 1, 1, 1, 1, 1, 1, 1, 9, '2021-11-29 14:57:50', 'Approved', 'Lock Upload', 'Active', '2021-11-05 08:05:43'),
(13, 'rtyert', 'ABC', 'aaa', 1, 'dsfg', 1, 'dsdf', 'sdf', 'sfd', 'sdf', 'ssdf', 8, '2021-11-24 14:57:50', 1, 1, 1, 1, 1, 1, 1, 1, 9, '2021-11-29 14:57:50', 'Approved', 'Lock Upload', 'Active', '2021-11-05 08:08:02'),
(14, 'rtyhnt', 'Trial112233', 'aaa', 1, 'dsfg', 1, 'dsdf', 'sdf', 'sfd', 'sdf', 'ssdf', 8, '2021-11-24 14:57:50', 1, 1, 1, 1, 1, 1, 1, 1, 9, '2021-11-29 14:57:50', 'Empty', 'Lock Upload', 'Active', '2021-11-05 08:08:23'),
(15, 'erth', 'ABC', 'aaa', 1, 'dsfg', 1, 'dsdf', 'sdf', 'sfd', 'sdf', 'ssdf', 8, '2021-11-24 14:57:50', 1, 1, 1, 1, 1, 1, 1, 1, 9, '2021-11-29 14:57:50', 'Approved', 'Lock Upload', 'Active', '2021-11-05 08:07:35'),
(16, 'wtrswet', 'Trial112233', 'aaa', 1, 'dsfg', 1, 'dsdf', 'sdf', 'sfd', 'sdf', 'ssdf', 8, '2021-11-24 14:57:50', 1, 1, 1, 1, 1, 1, 1, 1, 9, '2021-11-29 14:57:50', 'Approved', 'Lock Upload', 'Inactive', '2021-11-05 08:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `positionID` int(11) NOT NULL,
  `positionName` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `createTrial` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`positionID`, `positionName`, `createTrial`) VALUES
(1, 'Plant Pathologist', 0),
(2, 'Breeder', 1),
(3, 'Others', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ratelevel`
--

CREATE TABLE `ratelevel` (
  `rateID` int(11) NOT NULL,
  `level` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `minPercent` int(11) NOT NULL,
  `maxPercent` int(11) NOT NULL,
  `weight` float NOT NULL,
  `computable` int(11) NOT NULL COMMENT '0-notcomputePerformance 1-computePerformance'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ratelevel`
--

INSERT INTO `ratelevel` (`rateID`, `level`, `description`, `minPercent`, `maxPercent`, `weight`, `computable`) VALUES
(1, '0', '0%', 0, 0, 0, 1),
(2, '1', '1-10%', 1, 10, 0.1, 1),
(3, '3', '11-25%', 11, 25, 0.25, 1),
(6, '5', '26-50%', 26, 50, 0.5, 1),
(7, '7', '51-75%', 51, 75, 0.75, 1),
(8, '9', '76-100%', 76, 100, 1, 1),
(9, 'X', 'Not ear', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trial`
--

CREATE TABLE `trial` (
  `trialID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `aliasName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trialActive` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `trialStatus` enum('Open','Lock Upload','Lock Approve','Closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Open',
  `plotSettingAutoLockUpload` int(11) NOT NULL DEFAULT 0 COMMENT '0-manualLock 1-autoLock',
  `plotSettingAutoLockApproved` int(11) NOT NULL DEFAULT 0 COMMENT '0-manualLock 1-autoLock',
  `owner` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trial`
--

INSERT INTO `trial` (`trialID`, `aliasName`, `trialActive`, `trialStatus`, `plotSettingAutoLockUpload`, `plotSettingAutoLockApproved`, `owner`, `create_date`, `last_update`) VALUES
('ABC', 'trialABC', 'Active', 'Open', 0, 0, 7, '2021-11-05 07:44:39', '2021-11-05 07:45:56'),
('t001', 'TestTrial', 'Active', 'Open', 0, 0, 1, '2021-11-05 06:33:26', '2021-11-05 06:33:26'),
('Trial112233', 'trial112233', 'Active', 'Open', 0, 0, 8, '2021-11-05 07:48:35', '2021-11-05 07:48:35'),
('Trial12345', 'T12345', 'Active', 'Open', 0, 0, 10, '2021-11-05 07:49:02', '2021-11-05 07:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `undetectear`
--

CREATE TABLE `undetectear` (
  `undetectEarID` int(11) NOT NULL,
  `pltID` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `note` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `missingEarImgPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `undetectear`
--

INSERT INTO `undetectear` (`undetectEarID`, `pltID`, `rating`, `note`, `missingEarImgPath`) VALUES
(1, 2, 2, NULL, NULL),
(2, 2, 9, 'ss', 'cc'),
(3, 4, 3, 'sdf', 'sfd'),
(4, 16, 9, 'ss', 'cc'),
(5, 13, 3, 'sdf', 'sfd'),
(6, 8, 3, 'sdf', 'sfd'),
(7, 8, 3, 'sdf', 'sfd'),
(8, 8, 3, 'sdf', 'sfd'),
(9, 13, 3, 'sdf', 'sfd'),
(10, 16, 3, 'sdf', 'sfd'),
(11, 5, 3, 'sdf', 'sfd'),
(12, 6, 3, 'sdf', 'sfd'),
(13, 12, 3, 'sdf', 'sfd'),
(14, 13, 9, 'ss', 'cc'),
(15, 15, 3, 'sdf', 'sfd'),
(16, 11, 3, 'sdf', 'sfd'),
(17, 9, 3, 'sdf', 'sfd'),
(18, 6, 3, 'sdf', 'sfd'),
(19, 2, 3, 'sdf', 'sfd'),
(20, 9, 3, 'sdf', 'sfd'),
(21, 6, 3, 'sdf', 'sfd'),
(22, 5, 3, 'sdf', 'sfd'),
(23, 5, 3, 'sdf', 'sfd'),
(24, 3, 9, 'ss', 'cc'),
(25, 3, 3, 'sdf', 'sfd'),
(26, 4, 3, 'sdf', 'sfd'),
(27, 15, 3, 'sdf', 'sfd'),
(28, 15, 3, 'sdf', 'sfd'),
(29, 12, 3, 'sdf', 'sfd'),
(30, 9, 3, 'sdf', 'sfd'),
(31, 4, 3, 'sdf', 'sfd'),
(32, 2, 3, 'sdf', 'sfd'),
(33, 11, 3, 'sdf', 'sfd'),
(34, 3, 9, 'ss', 'cc'),
(35, 13, 3, 'sdf', 'sfd'),
(36, 2, 3, 'sdf', 'sfd'),
(37, 15, 3, 'sdf', 'sfd'),
(38, 15, 3, 'sdf', 'sfd'),
(39, 6, 3, 'sdf', 'sfd'),
(40, 12, 3, 'sdf', 'sfd'),
(41, 4, 3, 'sdf', 'sfd'),
(42, 16, 3, 'sdf', 'sfd'),
(43, 4, 3, 'sdf', 'sfd');

-- --------------------------------------------------------

--
-- Table structure for table `useraccount`
--

CREATE TABLE `useraccount` (
  `userID` int(11) NOT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `countryID` int(11) NOT NULL,
  `positionID` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adminRole` enum('Admin','User') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'User',
  `createDate` datetime NOT NULL DEFAULT current_timestamp(),
  `lastAccess` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userStatus` enum('Waiting','Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Waiting',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tokenDateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `useraccount`
--

INSERT INTO `useraccount` (`userID`, `userName`, `firstName`, `lastName`, `password`, `countryID`, `positionID`, `picture`, `adminRole`, `createDate`, `lastAccess`, `userStatus`, `token`, `tokenDateTime`) VALUES
(1, 'Test', 'sssssxcxx', 'Admin1LNmae', 'Test', 4, 3, NULL, 'Admin', '2021-10-28 02:10:08', '2021-11-05 07:51:15', 'Active', NULL, NULL),
(7, 'user1@ku.th', 'User1', 'lastName1', 'User1', 4, 1, NULL, 'User', '2021-11-05 13:34:13', '2021-11-05 07:40:32', 'Active', NULL, NULL),
(8, 'user2@ku.th', 'User2', 'lastName2', 'User2', 4, 2, NULL, 'User', '2021-11-05 13:37:40', '2021-11-05 07:40:40', 'Active', NULL, NULL),
(9, 'Admin2@ku.th', 'Admin2Name', 'Admin2LNmae', 'Admin2', 4, 3, NULL, 'Admin', '2021-11-05 14:32:59', '2021-11-05 07:35:38', 'Inactive', NULL, NULL),
(10, 'user3@ku.th', 'User3', 'lastName3', 'User3', 4, 2, NULL, 'User', '2021-11-05 14:40:25', '2021-11-05 07:41:06', 'Waiting', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usertrial`
--

CREATE TABLE `usertrial` (
  `trialID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `userID` int(11) NOT NULL,
  `userRole` enum('Plant Pathologist','Trialing Team') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usertrial`
--

INSERT INTO `usertrial` (`trialID`, `userID`, `userRole`) VALUES
('ABC', 7, 'Plant Pathologist'),
('t001', 7, 'Plant Pathologist'),
('ABC', 8, 'Trialing Team'),
('t001', 8, 'Trialing Team'),
('Trial112233', 8, 'Trialing Team'),
('Trial12345', 8, 'Plant Pathologist'),
('t001', 10, 'Plant Pathologist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`countryID`);

--
-- Indexes for table `countryadmin`
--
ALTER TABLE `countryadmin`
  ADD PRIMARY KEY (`countryID`,`userID`),
  ADD KEY `adminID` (`userID`);

--
-- Indexes for table `ear`
--
ALTER TABLE `ear`
  ADD PRIMARY KEY (`cornID`),
  ADD KEY `plotID` (`plotID`),
  ADD KEY `DER_rate_A` (`DER_rate_A`),
  ADD KEY `DER_rate_M` (`DER_rate_M`);

--
-- Indexes for table `plot`
--
ALTER TABLE `plot`
  ADD PRIMARY KEY (`plotID`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `photographer` (`uploadBy`),
  ADD KEY `extID` (`trialID`),
  ADD KEY `approveBy` (`approveBy`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`positionID`);

--
-- Indexes for table `ratelevel`
--
ALTER TABLE `ratelevel`
  ADD PRIMARY KEY (`rateID`);

--
-- Indexes for table `trial`
--
ALTER TABLE `trial`
  ADD PRIMARY KEY (`trialID`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `undetectear`
--
ALTER TABLE `undetectear`
  ADD PRIMARY KEY (`undetectEarID`),
  ADD KEY `pltID` (`pltID`),
  ADD KEY `rating` (`rating`);

--
-- Indexes for table `useraccount`
--
ALTER TABLE `useraccount`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userName` (`userName`),
  ADD KEY `countryID` (`countryID`),
  ADD KEY `positionID` (`positionID`);

--
-- Indexes for table `usertrial`
--
ALTER TABLE `usertrial`
  ADD PRIMARY KEY (`userID`,`trialID`),
  ADD KEY `extID` (`trialID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `countryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ear`
--
ALTER TABLE `ear`
  MODIFY `cornID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `plot`
--
ALTER TABLE `plot`
  MODIFY `plotID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `positionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ratelevel`
--
ALTER TABLE `ratelevel`
  MODIFY `rateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `undetectear`
--
ALTER TABLE `undetectear`
  MODIFY `undetectEarID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `useraccount`
--
ALTER TABLE `useraccount`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `countryadmin`
--
ALTER TABLE `countryadmin`
  ADD CONSTRAINT `countryAdmin_ibfk_1` FOREIGN KEY (`countryID`) REFERENCES `country` (`countryID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `countryAdmin_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `useraccount` (`userID`) ON UPDATE CASCADE;

--
-- Constraints for table `ear`
--
ALTER TABLE `ear`
  ADD CONSTRAINT `ear_ibfk_1` FOREIGN KEY (`plotID`) REFERENCES `plot` (`plotID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ear_ibfk_2` FOREIGN KEY (`DER_rate_A`) REFERENCES `ratelevel` (`rateID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ear_ibfk_3` FOREIGN KEY (`DER_rate_M`) REFERENCES `ratelevel` (`rateID`) ON UPDATE CASCADE;

--
-- Constraints for table `plot`
--
ALTER TABLE `plot`
  ADD CONSTRAINT `plot_ibfk_1` FOREIGN KEY (`uploadBy`) REFERENCES `useraccount` (`userID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `plot_ibfk_2` FOREIGN KEY (`trialID`) REFERENCES `trial` (`trialID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `plot_ibfk_3` FOREIGN KEY (`approveBy`) REFERENCES `useraccount` (`userID`) ON UPDATE CASCADE;

--
-- Constraints for table `trial`
--
ALTER TABLE `trial`
  ADD CONSTRAINT `trial_ibfk_1` FOREIGN KEY (`owner`) REFERENCES `useraccount` (`userID`) ON UPDATE CASCADE;

--
-- Constraints for table `undetectear`
--
ALTER TABLE `undetectear`
  ADD CONSTRAINT `undetectEar_ibfk_1` FOREIGN KEY (`pltID`) REFERENCES `plot` (`plotID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `undetectEar_ibfk_2` FOREIGN KEY (`rating`) REFERENCES `ratelevel` (`rateID`) ON UPDATE CASCADE;

--
-- Constraints for table `useraccount`
--
ALTER TABLE `useraccount`
  ADD CONSTRAINT `userAccount_ibfk_1` FOREIGN KEY (`countryID`) REFERENCES `country` (`countryID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `userAccount_ibfk_2` FOREIGN KEY (`positionID`) REFERENCES `position` (`positionID`) ON UPDATE CASCADE;

--
-- Constraints for table `usertrial`
--
ALTER TABLE `usertrial`
  ADD CONSTRAINT `userTrial_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `useraccount` (`userID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `userTrial_ibfk_2` FOREIGN KEY (`trialID`) REFERENCES `trial` (`trialID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
