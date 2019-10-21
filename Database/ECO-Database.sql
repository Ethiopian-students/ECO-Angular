-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 21, 2019 at 06:16 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ECO-Database`
--

-- --------------------------------------------------------

--
-- Table structure for table `Login`
--

CREATE TABLE `Login` (
  `ID` int(5) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='User Login';

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `First Name` varchar(50) NOT NULL,
  `Middle Initial` char(2) DEFAULT NULL,
  `Last Name` int(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Street Address` varchar(100) NOT NULL,
  `Street Address optional` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Zipcode` int(6) NOT NULL,
  `Payment Date` timestamp NOT NULL DEFAULT current_timestamp(),
  `Credit Card Type` int(11) NOT NULL,
  `Card Number` int(11) NOT NULL,
  `Expiration date` date NOT NULL,
  `PaymentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Process`
--

CREATE TABLE `Process` (
  `Email` varchar(50) NOT NULL,
  `Service FormID` varchar(8) NOT NULL,
  `PaymentID` int(11) NOT NULL,
  `First Name` varchar(50) NOT NULL,
  `Last Name` varchar(50) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='All user request will be saved here. ';

-- --------------------------------------------------------

--
-- Table structure for table `ServiceAppForms`
--

CREATE TABLE `ServiceAppForms` (
  `Service FormID` varchar(8) NOT NULL,
  `Description` varchar(10) NOT NULL,
  `Service Price` decimal(10,0) NOT NULL,
  `Version` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='All services will have a form.';

-- --------------------------------------------------------

--
-- Table structure for table `UserRegistration`
--

CREATE TABLE `UserRegistration` (
  `First Name` varchar(50) NOT NULL,
  `Middle Initial` char(2) NOT NULL,
  `Last Name` int(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Street Address` varchar(100) NOT NULL,
  `Street Address optional` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Zipcode` int(6) NOT NULL,
  `Registration Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ServiceAppForms`
--
ALTER TABLE `ServiceAppForms`
  ADD PRIMARY KEY (`Service FormID`);

--
-- Indexes for table `UserRegistration`
--
ALTER TABLE `UserRegistration`
  ADD PRIMARY KEY (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
