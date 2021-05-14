-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 14, 2021 at 08:14 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `funds_and_fundingbody_managment`
--

-- --------------------------------------------------------

--
-- Table structure for table `fundingbody`
--

CREATE TABLE `fundingbody` (
  `idFundingBody` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `interestArea` varchar(45) DEFAULT NULL,
  `fund_range` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fundingbody`
--

INSERT INTO `fundingbody` (`idFundingBody`, `name`, `email`, `address`, `phone`, `interestArea`, `fund_range`) VALUES
(3, 'S.L.Yasas', 'yasas56740%40gmail.com', '44%252F5%252CKakirawa%252CAnuradhapura', 778967545, 'Data+Science', '100000.00'),
(7, 'A.A.Rupasinghe', 'acreations123@gmail.com', '7/A,High level road,Maharagama', 115836752, 'Health ', '800000.00'),
(9, 'P.R.Jayathissa', 'rsenewi897@yahoo.com', '98/A,Galle road,Maradana', 719068909, 'Science', '1000000.00'),
(13, 'abc', 'abcd%40gmail.com', 'abcdef', 712345678, 'aaaaa', '34000.00'),
(14, 'addfv', 'asghhy@gmail.com', 'abcd', 190789567, 'abcde', '1234.00');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `FundID` int(11) NOT NULL,
  `researchID` int(11) DEFAULT NULL,
  `fundingBodyID` int(11) DEFAULT NULL,
  `currentStage` int(11) DEFAULT NULL,
  `fundsForCurrentStage` decimal(15,2) DEFAULT NULL,
  `totalFunds` decimal(15,2) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `totalFundedAmount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`FundID`, `researchID`, `fundingBodyID`, `currentStage`, `fundsForCurrentStage`, `totalFunds`, `description`, `totalFundedAmount`) VALUES
(1, 1, 3, 2, '20000.00', '100000.00', 'quater for each stage', '40000.00'),
(2, 5, 2, 3, '15000.00', '60000.00', 'quater for each stage', '45000.00'),
(3, 9, 2, 4, '24000.00', '96000.00', 'quater for each stage', '96000.00'),
(4, 4, 5, 4, '12000.00', '48000.00', 'quater for each stage', '48000.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fundingbody`
--
ALTER TABLE `fundingbody`
  ADD PRIMARY KEY (`idFundingBody`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`FundID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fundingbody`
--
ALTER TABLE `fundingbody`
  MODIFY `idFundingBody` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `FundID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
