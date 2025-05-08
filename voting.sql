-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 09, 2024 at 05:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

CREATE TABLE `election` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `location` varchar(255) NOT NULL,
  `max_candidate` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`id`, `name`, `from_date`, `to_date`, `location`, `max_candidate`) VALUES
(1, 'Mukhiya Election', '2024-01-26', '2024-01-30', 'Raipura Panchayat', 0),
(2, 'Ward Election', '2024-01-27', '2024-01-29', 'Raipura Panchayat, Ward 2', 6),
(7, 'ward ', '2024-01-31', '2024-02-04', 'dumariya', 7),
(8, 'mukhiya', '2024-02-01', '2024-02-09', 'dumariya', 8),
(9, 'class monitor', '2024-02-02', '2024-02-08', 'cimage college patna', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(255) NOT NULL,
  `role` text NOT NULL,
  `election` int(11) DEFAULT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `mobile`, `password`, `address`, `photo`, `role`, `election`, `status`) VALUES
(3, 'Samar Raj', 9943794495, 'Samar', 'Dumariya', 'Physics_wallah_logo.jpg', 'voter', NULL, 0),
(6, 'vikash', 9898989898, '9898', 'patna', 'Rp.jpg.jpg', 'voter', NULL, 0),
(1111, 'Alok Pandey', 8974837576, 'Alok@123', 'Dumariya', '', 'admin', NULL, 0),
(1114, 'Ranjit kumar pandey', 1212121212, '1212', 'village-Dumariya, post-Garkha,p.s-Bheldi,district-saran (Bihar),pin-841311', '99850057.jpg', 'voter', NULL, 0),
(1115, 'amit', 7584839392, '987665', NULL, 'VBG-9.png', 'candidate', 9, 0),
(1116, 'vk', 423553456346, 'Alok@12', NULL, 'it1.jpeg', 'candidate', 1, 0),
(1117, 'ravi kumar', 5454545454, 'Alok@123', NULL, 'it5.jpeg', 'candidate', 1, 0),
(1118, 'amit', 8974837576, 'Alok@123', NULL, 'VBG-9.png', 'candidate', 9, 0),
(1119, 'Rahul kumar', 8974837576, 'Alok@123', NULL, 'an1.jpeg', 'candidate', 9, 0),
(1120, 'amit', 7970527195, '00000', 'sreet no 1 house no 6', 'it4.jpeg', 'voter', NULL, 0),
(1121, 'Samar Raj', 9943794497, 'samar', NULL, 'favicon.jpg', 'candidate', 8, 0),
(1122, 'Samar Raj2', 9943794499, 'samar', NULL, 'logo.jpg', 'candidate', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `votings`
--

CREATE TABLE `votings` (
  `Id` int(11) NOT NULL,
  `election_Id` int(11) DEFAULT NULL,
  `voters_Id` int(11) DEFAULT NULL,
  `candidate_Id` int(11) DEFAULT NULL,
  `vote_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `votings`
--

INSERT INTO `votings` (`Id`, `election_Id`, `voters_Id`, `candidate_Id`, `vote_time`) VALUES
(1, 9, 1111, 1115, '2024-02-06 20:46:15'),
(2, 9, 1111, 1118, '2024-02-06 20:46:23'),
(3, 8, 1111, 1121, '2024-02-09 21:11:04'),
(4, 8, 3, 1121, '2024-02-09 21:23:17'),
(5, 8, 1121, 1121, '2024-02-09 21:25:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `election`
--
ALTER TABLE `election`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votings`
--
ALTER TABLE `votings`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `election`
--
ALTER TABLE `election`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1123;

--
-- AUTO_INCREMENT for table `votings`
--
ALTER TABLE `votings`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
