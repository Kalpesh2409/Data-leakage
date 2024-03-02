-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2024 at 03:32 PM
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
-- Database: `data_leakage_detection`
--

-- --------------------------------------------------------

--
-- Table structure for table `hacker_secret_pwd`
--

CREATE TABLE `hacker_secret_pwd` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'Active',
  `mac_details` varchar(30) DEFAULT 'not_detect',
  `ip_address` varchar(40) DEFAULT 'not_detect'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hacker_secret_pwd`
--

INSERT INTO `hacker_secret_pwd` (`id`, `username`, `password`, `status`, `mac_details`, `ip_address`) VALUES
(2, 'system', 'system', 'Block', '5C-C5-D4-02-1E-C0', NULL),
(3, 'secret', 'secret', 'Active', 'not_detect', NULL),
(4, 'james', 'james', 'Block', '192.168.0.102', '192.168.0.102'),
(5, 'tiger', 'tiger', 'Active', 'not_detect', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upload_files`
--

CREATE TABLE `upload_files` (
  `f_id` int(11) NOT NULL,
  `filename` varchar(30) DEFAULT NULL,
  `upload_by` varchar(30) DEFAULT NULL,
  `digest_value` varchar(100) DEFAULT NULL,
  `upload_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `upload_files`
--

INSERT INTO `upload_files` (`f_id`, `filename`, `upload_by`, `digest_value`, `upload_date`) VALUES
(12, 'abc.txt', 'ritesh@gmail.com', '04a936794d282e7c367de917ccbf66a4', '2024-02-18 00:00:00'),
(13, 'abc1.txt', 'ritesh@gmail.com', '04a936794d282e7c367de917ccbf66a4', '2024-02-18 00:00:00'),
(14, 'vishal.txt', 'ritesh@gmail.com', '581bd1eef200cb16a5da8da9946bc0b5', '2024-02-18 00:00:00'),
(15, 'jadhav.txt', 'vishal@gmail.com', '581bd1eef200cb16a5da8da9946bc0b5', '2024-02-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `fname`, `lname`, `gender`, `mobile`, `email`, `password`, `reg_date`) VALUES
(32, 'Ritesh', 'Surange', 'Male', '8900890089', 'ritesh@gmail.com', '123123', '2024-02-18 18:17:58'),
(33, 'Vishal', 'Jadhav', 'Male', '9876987667', 'vishal@gmail.com', '123123', '2024-02-18 19:27:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hacker_secret_pwd`
--
ALTER TABLE `hacker_secret_pwd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_files`
--
ALTER TABLE `upload_files`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hacker_secret_pwd`
--
ALTER TABLE `hacker_secret_pwd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `upload_files`
--
ALTER TABLE `upload_files`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
