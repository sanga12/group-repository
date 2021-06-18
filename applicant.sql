-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2021 at 08:43 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `applicant`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(3, 'IT and Telecoms'),
(4, 'Engineering and Construction<'),
(5, 'Education and Training'),
(6, 'Finance and Accounting'),
(7, 'Healthcare and Pharmaceutical'),
(8, 'Farming and Agribusiness'),
(9, 'HR and Administrtion'),
(10, 'International Relation');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `div_number` varchar(3) NOT NULL,
  `div_name` varchar(30) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`div_number`, `div_name`, `description`) VALUES
('1', 'DIVISION ONE', ''),
('2', 'DIVISION TWO', ''),
('3', 'DIVISION THREE', ''),
('4', 'DIVISION FOUR', '');

-- --------------------------------------------------------

--
-- Table structure for table `education_level`
--

CREATE TABLE `education_level` (
  `elevel_id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `elevel` int(11) NOT NULL,
  `pcategory` int(11) NOT NULL,
  `division` int(3) NOT NULL,
  `gpa` varchar(3) NOT NULL,
  `sdate` year(4) NOT NULL,
  `edate` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education_level`
--

INSERT INTO `education_level` (`elevel_id`, `userID`, `elevel`, `pcategory`, `division`, `gpa`, `sdate`, `edate`) VALUES
(2, 14, 4, 6, 0, '2', 2003, 2005),
(4, 12, 3, 3, 0, '3', 2000, 2003),
(5, 12, 2, 4, 0, '3', 2004, 2006),
(14, 21, 1, 5, 0, '3', 2012, 2015),
(15, 21, 6, 3, 1, '', 2005, 2006),
(16, 21, 1, 3, 0, '3', 2016, 2017),
(17, 21, 1, 4, 0, '3', 2009, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `jobpost`
--

CREATE TABLE `jobpost` (
  `postID` int(11) NOT NULL,
  `jobsize` int(11) NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `jtitle` varchar(20) NOT NULL,
  `yexperience` varchar(8) NOT NULL,
  `division` varchar(20) NOT NULL,
  `gpa` double NOT NULL,
  `pcategory` varchar(20) NOT NULL,
  `jdescription` varchar(255) NOT NULL,
  `elevel` int(2) NOT NULL,
  `employer` varchar(100) NOT NULL,
  `poster` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobpost`
--

INSERT INTO `jobpost` (`postID`, `jobsize`, `sdate`, `edate`, `jtitle`, `yexperience`, `division`, `gpa`, `pcategory`, `jdescription`, `elevel`, `employer`, `poster`) VALUES
(14, 20, '2021-06-10', '2021-06-25', 'Application Home ser', '3', '4', 0, '5', ' wbbv fgf ffgf fgf ffg', 7, 'Homecare Company', 'kisvan@gmail.com'),
(15, 34, '2021-07-10', '2021-07-23', 'ooooooooooooooooo', '3', '', 3, '4', ' gggg ffff', 2, 'hhh', 'kisvan@gmail.com'),
(16, 34, '2021-06-18', '2021-06-25', 'rrrr', '3', '3', 0, '7', ' dfd dfd dff', 6, 'cvcv', 'kisvan@gmail.com'),
(17, 45, '2021-06-13', '2021-06-23', 'kk', '3', '', 2.6, '5', ' fgfd dfgfd df dg', 3, 'hghg', 'kisvan@gmail.com'),
(18, 12, '2021-06-13', '2021-06-25', 'ggggggg', '4', '3', 0, '5', ' sdsds', 6, 'ggggg', 'kisvan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level_name` varchar(50) NOT NULL,
  `level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_name`, `level_id`) VALUES
('PHD', 1),
('Master Degree', 2),
('Undergraduate Degree', 3),
('Diploma', 4),
('Certificate', 5),
('Advanced Level (ACSE)', 6),
('Ordinary Level (CSE)', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `fName` varchar(60) NOT NULL,
  `lName` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `gender` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `objectives` text NOT NULL,
  `elevel` varchar(60) NOT NULL,
  `pcategory` varchar(60) NOT NULL,
  `start_year` int(4) NOT NULL,
  `end_year` int(4) NOT NULL,
  `gpa` varchar(8) NOT NULL,
  `jcategory` varchar(60) NOT NULL,
  `yexperiance` varchar(60) NOT NULL,
  `icomputer` varchar(8) NOT NULL,
  `mWord` varchar(8) NOT NULL,
  `mExcel` varchar(8) NOT NULL,
  `mPoint` varchar(8) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `organization` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `fName`, `lName`, `email`, `contact`, `gender`, `password`, `objectives`, `elevel`, `pcategory`, `start_year`, `end_year`, `gpa`, `jcategory`, `yexperiance`, `icomputer`, `mWord`, `mExcel`, `mPoint`, `user_type`, `organization`) VALUES
(23, 'chuga', 'stan', 'chuga@gmail.com', '0755531602', 'M', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, 0, '', 'HR And Administrtion', '3', '2', '2', '1', '1', 'USER', 'UDOM'),
(21, 'fredy', 'brighton', 'fredrickbrighton@gmail.com', '07889876', 'M', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, 0, '', 'IT And Telecoms', '2', '1', '1', '1', '1', 'USER', 'udom'),
(12, 'JOSEPH', 'KULWA', 'josephkulwa6991@gmail.com', '', 'M', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, 0, '', 'IT And Telecoms', '2', '2', '2', '2', '2', 'USER', 'TMA'),
(1, 'kisvan', 'kakun', 'kisvan@gmail.com', '0767345634543', 'M', '25d55ad283aa400af464c76d713c07ad', '  ', '', '', 0, 0, '', '', '', '', '', '', '', 'POSTER', ''),
(14, 'lugano', 'Mwakapuku', 'lumwakapuku@gmail.com', '', 'M', 'bad670f05ad869901d90a37aef62572c', '', '{\"5545\":{\"level\":\"PHD\",\"programe\":\"CSE\",\"start\":\"2017\",\"end\"', '', 0, 0, '', 'Procurement And Logistics', '2', '1', '1', '1', '1', 'USER', 'we'),
(22, 'salum', 'mshana', 'santos@gmail.com', '0756525253', 'M', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, 0, '', 'Statistics And Mathematics', '3', '', '', '', '', 'USER', 'fgfyuf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`div_number`);

--
-- Indexes for table `education_level`
--
ALTER TABLE `education_level`
  ADD PRIMARY KEY (`elevel_id`),
  ADD KEY `userEleve` (`userID`),
  ADD KEY `categorEdu` (`pcategory`),
  ADD KEY `levelEdu` (`elevel`);

--
-- Indexes for table `jobpost`
--
ALTER TABLE `jobpost`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `sn` (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `education_level`
--
ALTER TABLE `education_level`
  MODIFY `elevel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `jobpost`
--
ALTER TABLE `jobpost`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `education_level`
--
ALTER TABLE `education_level`
  ADD CONSTRAINT `categorEdu` FOREIGN KEY (`pcategory`) REFERENCES `category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `levelEdu` FOREIGN KEY (`elevel`) REFERENCES `level` (`level_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `userEleve` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
