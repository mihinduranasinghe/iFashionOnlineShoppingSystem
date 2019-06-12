-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jun 12, 2019 at 02:08 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customerID` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `securityanswer` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `dob` varchar(12) DEFAULT NULL,
  `delAddress` varchar(50) DEFAULT NULL,
  `contactnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `username`, `password`, `securityanswer`, `fullname`, `gender`, `dob`, `delAddress`, `contactnum`) VALUES
(972781312, 'mihindu', '123', 'shadow', 'Mihindu Ranasinghe', 'null', '04/10/1997', 'Eheliyagoda', 768416637),
(1, 'kavindu', '123', 'teena', NULL, NULL, NULL, NULL, NULL),
(2, 'sahan', '123', 'a', NULL, NULL, NULL, NULL, NULL),
(962781312, 'rajitha', '123', 'shadow', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `itemCode` varchar(5) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `Bill` double DEFAULT NULL,
  `purchasedDate` date DEFAULT NULL,
  `purchasedTime` time DEFAULT NULL,
  `paymentStatus` varchar(10) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  KEY `orders_customerID_idx` (`customerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`itemCode`, `size`, `quantity`, `Bill`, `purchasedDate`, `purchasedTime`, `paymentStatus`, `customerID`) VALUES
('B001', 'SMALL', 2, 2400, NULL, NULL, 'PAYED', 972781312),
('B001', 'SMALL', 12, 14400, NULL, NULL, 'PAYED', 972781312),
('B001', 'SMALL', 12, 14400, NULL, NULL, 'PAYED', 972781312),
('B001', 'SMALL', 2, 2400, NULL, NULL, 'PAYED', 972781312),
('B001', 'SMALL', 12, 14400, NULL, NULL, 'PAYED', 972781312),
('B001', 'SMALL', 2, 2400, NULL, NULL, 'PAYED', 972781312),
('G001', 'SMALL', 45, 54000, NULL, NULL, 'PAYED', 972781312),
('G007', 'SMALL', 11, 22000, NULL, NULL, 'PAYED', 972781312),
('G007', 'SMALL', 7, 14000, NULL, NULL, 'Not Yet', 972781312),
('B001', 'SMALL', 32, 38400, NULL, NULL, 'Not Yet', 972781312),
('B001', 'SMALL', 12, 14400, NULL, NULL, 'PAYED', 972781312),
('B001', 'SMALL', 12, 14400, NULL, NULL, 'PAYED', 972781312),
('B001', 'SMALL', 12, 14400, NULL, NULL, 'PAYED', 972781312),
('B004', 'SMALL', 2, 2800, NULL, NULL, 'PAYED', 972781312),
('B004', 'SMALL', 2, 2800, NULL, NULL, 'PAYED', 972781312),
('B001', 'SMALL', 12, 14400, NULL, NULL, 'Not Yet', 2),
('B001', 'SMALL', 12, 14400, NULL, NULL, 'Not Yet', 2),
('B001', 'SMALL', 2, 2400, NULL, NULL, 'Not Yet', 2),
('B001', 'SMALL', 2, 2400, NULL, NULL, 'Not Yet', 972781312),
('B001', 'SMALL', 2, 2400, NULL, NULL, 'Not Yet', 2),
('B001', 'SMALL', 2, 2400, NULL, NULL, 'Not Yet', 2),
('B005', 'SMALL', 2, 3200, NULL, NULL, 'Not Yet', 2),
('B002', 'SMALL', 12, 14400, NULL, NULL, 'Not Yet', 962781312),
('B002', 'SMALL', 12, 14400, NULL, NULL, 'Not Yet', 962781312),
('B002', 'SMALL', 12, 14400, NULL, NULL, 'Not Yet', 972781312);

-- --------------------------------------------------------

--
-- Table structure for table `worldbank`
--

DROP TABLE IF EXISTS `worldbank`;
CREATE TABLE IF NOT EXISTS `worldbank` (
  `cardholdersname` varchar(50) DEFAULT NULL,
  `cardnumber` int(11) NOT NULL,
  `cvv` int(11) DEFAULT NULL,
  PRIMARY KEY (`cardnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worldbank`
--

INSERT INTO `worldbank` (`cardholdersname`, `cardnumber`, `cvv`) VALUES
('mihinduranasinghe', 123456789, 123);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
