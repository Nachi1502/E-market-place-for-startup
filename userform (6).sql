-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2023 at 07:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userform`
--

-- --------------------------------------------------------

--
-- Table structure for table `complainttemp`
--

CREATE TABLE `complainttemp` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL DEFAULT 'DDO',
  `services` varchar(50) NOT NULL,
  `discription` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `image_url` text NOT NULL,
  `userCode` varchar(255) NOT NULL DEFAULT 'None',
  `status` varchar(15) NOT NULL DEFAULT 'Waiting',
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complainttemp`
--


-- --------------------------------------------------------

--
-- Table structure for table `complainttempbackup`
--

CREATE TABLE `complainttempbackup` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `services` varchar(50) NOT NULL,
  `discription` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `userCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complainttempbackup`
--



-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `mail` varchar(50) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `aadhar card` bigint(100) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL,
  `user` varchar(10) NOT NULL DEFAULT 'user',
  `userCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `email`, `password`, `aadhar card`, `code`, `status`, `user`, `userCode`) VALUES
(34, 'Nirmal', 'nirmalchaudhary107@gmail.com', '$2y$10$FJf0U/Sk9MTFfI9hbqpxhOC7RkzwMhjXv6oBlluCrfD0fikbsBRHe', 0, 687605, 'verified', 'user', '6425b6151be35'),
(35, 'Parth Sir', 'parthit@gmail.com', '$2y$10$AFEgZlBKf2UW5.YDPGUHV.5bwI1T7MhvtolyZdlDCMVMUD0Huh8hy', 0, 545505, 'verified', 'education', '6425c684abf3e'),
(36, 'Ravi sir', 'ravi@gmail.com', '$2y$10$lvkYE9StvJQa25cupzD3U.r8LjwtDDu93pdVBikJ.yNb97Hi6TUBK', 0, 405258, 'verified', 'tech', '6425c8d911835'),
(37, 'sagar sir', 'sagar@gmail.com', '$2y$10$kB0.HjyHS6bBSg/yHOdhOuIMWZlvqvLoIXlSJKoeO.AXL.mjYTFNu', 0, 947251, 'verified', 'industry', '6425c8fb47cc0'),
(38, 'Nirav Sir', 'nirav@gmail.com', '$2y$10$/64OtIk4BCAXYU9Bse/cVOIs33VvEl54sPHyWs0GXA9tjgNi4kgZG', 0, 809343, 'verified', 'education', '6425c91ea147d'),
(39, 'Ayush Naik', 'ayush@gmail.com', '$2y$10$pj.VZXfvYgphUxTVr3Ri0OQKFuQQdDAkSTj9AQ3.dQNVqTcRcz.Vi', 0, 122099, 'verified', 'industry', '6425c938c0e87'),
(40, 'Parth Nakum', 'parth@gmail.com', '$2y$10$9GtK23UhGB54btBGWzyPv.bvSlrPvbXnilHw41l.Fnzudg8jKZy1q', 0, 177783, 'verified', 'property', '6425c9509b400'),
(41, 'Mit Parmar', 'mit@gmail.com', '$2y$10$WXnzvrvmS.aEiv6QIMEQteq3nnC9SFq.8ftUNo69Qf6jHP5KngvhC', 0, 316635, 'verified', 'property', '6425c9680f20d'),
(42, 'Nirmal Chaudhary', 'nirmal@gmail.com', '$2y$10$N7cNkVtXSe61l.filV2YeeF.6HEzwFSCV9ojoJJGfh53qMI3RkOSi', 0, 907253, 'verified', 'financial', '6425c98e16c46'),
(43, 'Vatsal Bhatt', 'vatsal@gmail.com', '$2y$10$YEa.yAsdPW2LQ.8mtQy3v.esc60Aq.n5zA9LjRfA0yte9A1pFnesO', 0, 448043, 'verified', 'education', '6425c9af4b6ff'),
(44, 'Om Bhatt', 'om@gmail.com', '$2y$10$IuWJS69uDMXvd0OelPUIGud0A13r/lc7GtVwdx5Hmo3AXIbsqXIGS', 0, 592769, 'verified', 'tech', '6425c9d16f29b'),
(45, 'Aryan Daki', 'aryan@gmail.com', '$2y$10$33sm.d6WD36ntqXMioN1xO4vyMzkEyTti234WOE.ClFvvJCxj3ox2', 0, 838046, 'verified', 'other', '6425ca15b6ff3'),
(46, 'Nachiket Darji', 'nachi@gmail.com', '$2y$10$oPp/bc90i396ZCydhWAcIuP74UTLDE2odNGRfmxYDdnutAdcsIby6', 0, 627061, 'verified', 'other', '6425ca2f50a41'),
(47, 'Ayush Dave', 'ayushdave@gmail.com', '$2y$10$JHnkMOts8VsUF4SSTf5FE.NM7/1HJ.2l/Fnxa1S3Yu6yUehDVBn36', 0, 154799, 'verified', 'user', '6425d182c11e5'),
(48, 'Mayank', 'mayank@gmail.com', '$2y$10$xGOl5Ppj4H2WW8wfA4HFxODD2VaGFm7O/i.lK23nZgPNg7.a/fOL2', 0, 912145, 'verified', 'user', '642715cfbda2e'),
(49, 'Hitarth Shah', 'hitarth@gmail.com', '$2y$10$E1sSfoUtYxr8Tt44AeY/RuMNrXd.XGCZNEXUa0agAhP1gQmgzAI02', 0, 578424, 'verified', 'education', '6427167e952ed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
