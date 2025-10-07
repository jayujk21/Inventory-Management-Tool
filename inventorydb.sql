-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 08:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventorydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `issueprocessed`
--

CREATE TABLE `issueprocessed` (
  `id` int(20) NOT NULL,
  `processedid` int(20) NOT NULL,
  `processedname` int(30) NOT NULL,
  `issuername` int(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `issuedate` date NOT NULL,
  `issuetime` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issueraw`
--

CREATE TABLE `issueraw` (
  `id` int(30) NOT NULL,
  `rawid` int(30) NOT NULL,
  `rawname` varchar(30) NOT NULL,
  `issuername` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `issuedate` date NOT NULL,
  `issuetime` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issueraw`
--

INSERT INTO `issueraw` (`id`, `rawid`, `rawname`, `issuername`, `quantity`, `issuedate`, `issuetime`) VALUES
(1, 1, 'sugar', 'raj sonar', 200, '2024-07-05', '04:30:00.000000'),
(2, 1, 'sugar', 'raj sonar', 200, '2024-07-05', '04:30:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`email`, `password`) VALUES
('0', '0'),
('0', '0'),
('sonarprem@gmail.com', '123456'),
('sonarprem@gmail.com', '123456'),
('sonarprem@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `processedmaterial`
--

CREATE TABLE `processedmaterial` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `cost` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `processedmaterial`
--

INSERT INTO `processedmaterial` (`id`, `name`, `quantity`, `unit`, `cost`) VALUES
(1, 'cookies', 100, 'pcs', 10),
(2, 'cake', 100, 'pcs', 200);

-- --------------------------------------------------------

--
-- Table structure for table `rawmaterial`
--

CREATE TABLE `rawmaterial` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rawmaterial`
--

INSERT INTO `rawmaterial` (`id`, `name`, `quantity`, `unit`, `cost`) VALUES
(1, 'sugar', 300, 'kg', 40),
(2, 'wheat', 500, 'kg', 29);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `issueprocessed`
--
ALTER TABLE `issueprocessed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issueraw`
--
ALTER TABLE `issueraw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processedmaterial`
--
ALTER TABLE `processedmaterial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rawmaterial`
--
ALTER TABLE `rawmaterial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `issueprocessed`
--
ALTER TABLE `issueprocessed`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issueraw`
--
ALTER TABLE `issueraw`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `processedmaterial`
--
ALTER TABLE `processedmaterial`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rawmaterial`
--
ALTER TABLE `rawmaterial`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
