-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2018 at 09:34 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car2`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `Owner_id` int(10) NOT NULL,
  `Bid` int(10) NOT NULL,
  `Bname` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`Owner_id`, `Bid`, `Bname`, `City`) VALUES
(20, 456, 'SBI', 'Dallas'),
(21, 54432, 'Chase', 'Washington'),
(22, 66575, 'WellsF', 'LA'),
(23, 98181, 'SBI', 'Arlington'),
(24, 648101, 'BBI', 'Arlington'),
(25, 5189201, 'CBI', 'Washington'),
(26, 1100101, 'LBI', 'London');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BillID` int(12) NOT NULL,
  `Rid` int(12) NOT NULL,
  `Vehicle_id` int(12) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BillID`, `Rid`, `Vehicle_id`, `Amount`) VALUES
(1, 0, 200, 800),
(6, 15, 9, 800),
(11, 20, 12, 300),
(12, 21, 13, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `Vehicle_id` int(12) NOT NULL,
  `License_no` int(12) NOT NULL,
  `Model` varchar(20) NOT NULL,
  `Year` int(12) NOT NULL,
  `Ctype` varchar(20) NOT NULL,
  `Drate` int(12) NOT NULL,
  `Wrate` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`Vehicle_id`, `License_no`, `Model`, `Year`, `Ctype`, `Drate`, `Wrate`) VALUES
(1, 123, 'Camaro', 2009, 'Medium', 0, 0),
(7, 5115, 'Hyundai', 2010, 'SUV', 300, 1000),
(8, 55000, 'Jetta', 2018, 'Compact', 100, 500),
(9, 86668, 'City', 2017, 'Compact', 100, 500),
(10, 9906, 'Ferrari', 2017, 'Compact', 0, 0),
(11, 78876, 'Porsche', 2009, 'Medium', 200, 1200),
(12, 6123, 'Cayenne', 2016, 'SUV', 100, 100),
(13, 553311, 'Camaro', 2018, 'Medium', 200, 1200),
(14, 8645272, 'City', 2016, 'Compact', 100, 700),
(15, 1237171, 'Contache', 2006, 'Medium', 200, 1200),
(16, 9668686, 'Elantra', 2012, 'Compact', 100, 700),
(17, 5180030, 'Gallardo', 2013, 'Compact', 100, 700),
(18, 5418818, 'CRV', 2013, 'SUV', 500, 1500),
(19, 11192949, 'Polo', 2018, 'Compact', 100, 700),
(20, 6591719, 'Impact', 2018, 'Compact', 100, 700),
(21, 917491, 'JXX', 2014, 'Compact', 100, 700),
(22, 51929471, 'Truck', 2014, 'Compact', 100, 700);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `Owner_id` int(12) NOT NULL,
  `Compid` int(12) NOT NULL,
  `Cname` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Owner_id`, `Compid`, `Cname`, `City`) VALUES
(40, 555, 'ABCorp', 'Dallas'),
(42, 80, 'FFSCorp', ''),
(43, 5678, 'PLCInc', ''),
(44, 11034, 'LMAOInc', ''),
(45, 8672891, 'Port', ''),
(46, 9191020, 'Post Malone', 'Pittsburgh');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cid` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `mobile` int(12) NOT NULL,
  `dlno` int(10) NOT NULL,
  `ino` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cid`, `fname`, `lname`, `mobile`, `dlno`, `ino`) VALUES
(1, 'K', 'Gole', 2147483647, 11, 12),
(2, 'P', 'Gole', 132452262, 12, 13),
(3, 'P', 'Gole', 2147483647, 21, 22),
(4, 'G', 'Pole', 76583645, 31, 33),
(5, 'Snehith', 'Raj', 2147483647, 345, 71123),
(6, 'Amitesh', 'Mathur', 2147483647, 111999, 999111),
(7, 'Kunal', 'Bijlani', 768059538, 45457766, 1237676),
(8, 'Mayank', 'Roy', 2147483647, 65892, 765241),
(9, 'Tanmay', 'Sharma', 2147483647, 876229, 8740119),
(10, 'Tyson', 'Fury', 2147483647, 73136, 861905),
(11, 'Luke', ' Kuechly', 91940188, 68910, 819247),
(12, 'Cam', 'Newton', 7101020, 615528, 769201);

-- --------------------------------------------------------

--
-- Table structure for table `individual`
--

CREATE TABLE `individual` (
  `Owner_id` int(12) NOT NULL,
  `Ssn` int(12) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `individual`
--

INSERT INTO `individual` (`Owner_id`, `Ssn`, `Name`, `City`) VALUES
(1, 312, 'KPG', 'Dallas'),
(3, 88877, 'KGG', 'Paris'),
(4, 99987, 'Diniyar', 'Warsaw'),
(5, 76454554, 'Rakesh', 'Dallas'),
(6, 19203, 'Jimmy G', 'San Francisco');

-- --------------------------------------------------------

--
-- Table structure for table `owns`
--

CREATE TABLE `owns` (
  `Vehicle_id` int(12) NOT NULL,
  `Owner_id` int(12) NOT NULL,
  `Ctype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owns`
--

INSERT INTO `owns` (`Vehicle_id`, `Owner_id`, `Ctype`) VALUES
(2, 2, 'Medium'),
(3, 21, 'Medium'),
(4, 41, 'Large'),
(6, 23, 'Medium'),
(7, 42, 'SUV'),
(8, 3, 'Compact'),
(9, 4, 'Compact'),
(10, 21, 'Compact'),
(11, 22, 'Medium'),
(12, 43, 'SUV'),
(13, 44, 'Medium'),
(14, 5, 'Compact'),
(15, 23, 'Medium'),
(16, 24, 'Compact'),
(17, 25, 'Compact'),
(18, 26, 'SUV'),
(19, 45, 'Compact'),
(20, 6, 'Compact'),
(22, 46, 'Compact');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `Ctype` varchar(20) NOT NULL,
  `Drate` int(12) NOT NULL,
  `Wrate` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`Ctype`, `Drate`, `Wrate`) VALUES
('Compact', 100, 700),
('Medium', 200, 1200),
('SUV', 500, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `Rid` int(12) NOT NULL,
  `Cid` int(12) NOT NULL,
  `Vehicle_id` int(12) NOT NULL,
  `Ctype` varchar(20) NOT NULL,
  `Rtype` varchar(20) NOT NULL,
  `Sdate` date NOT NULL,
  `Nodays` int(12) NOT NULL,
  `Noweeks` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`Rid`, `Cid`, `Vehicle_id`, `Ctype`, `Rtype`, `Sdate`, `Nodays`, `Noweeks`) VALUES
(1, 2, 7, 'SUV', 'Daily', '2018-01-01', 1, 1),
(7, 3, 8, 'SUV', 'Daily', '2018-01-01', 1, 1),
(15, 4, 9, 'Compact', 'Weekly', '2018-08-12', 1, 1),
(20, 5, 12, 'SUV', 'Weekly', '2016-08-08', 0, 3),
(21, 6, 13, 'Medium', 'Weekly', '2018-08-12', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`Owner_id`),
  ADD UNIQUE KEY `Bid` (`Bid`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BillID`),
  ADD UNIQUE KEY `Rid` (`Rid`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`Vehicle_id`),
  ADD UNIQUE KEY `License_no` (`License_no`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`Owner_id`),
  ADD UNIQUE KEY `Compid` (`Compid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cid`);

--
-- Indexes for table `individual`
--
ALTER TABLE `individual`
  ADD PRIMARY KEY (`Owner_id`),
  ADD UNIQUE KEY `Ssn` (`Ssn`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`Rid`),
  ADD UNIQUE KEY `Cid` (`Cid`),
  ADD UNIQUE KEY `Vehicle_id` (`Vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `Owner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `BillID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `Vehicle_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `Owner_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `individual`
--
ALTER TABLE `individual`
  MODIFY `Owner_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rental`
--
ALTER TABLE `rental`
  MODIFY `Rid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
