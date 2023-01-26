-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2023 at 01:26 PM
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
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `equip`
--

CREATE TABLE `equip` (
  `id` int(56) NOT NULL,
  `name` varchar(200) NOT NULL,
  `count` int(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `username` varchar(200) NOT NULL,
  `password` varchar(500) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `prof` int(11) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`username`, `password`, `name`, `prof`, `street`, `city`, `phone`, `time`) VALUES
('Balaji14', '$5$rounds=535000$jEtFFVDuJfQqCCLU$IC6jgPQxD2RatrGxMNOnnHIBsSuWmKOUskl04OjAoB5', 'Balaji ', 3, 'sriram nagar , kolathur', 'chennai', '9638527410', '2023-01-25 02:27:56'),
('dhaunsh16', '$5$rounds=535000$ixno635O5J0ew00A$Eprlx62xE8b4R6RgA3cj/SJx9eYEDh1y9.lyn7tEbw6', 'Dhanush', 2, '2nd street , thiruvetriur', 'chennai', '1234567890', '2023-01-24 01:58:31'),
('hari10', '$5$rounds=535000$3ylZobWZtwRtRyAV$68UNiGs9iLB8NYVRMuZ1kpNe0DEicc/f9BYoP7tf9z8', 'Hari', 4, '2nd street , thiruvallur', 'chennai', '1234567890', '2023-01-25 02:26:12'),
('raahul10', '$5$rounds=535000$PmjSbykfgtKXdJ7a$agmD6YLx9tgX2TP3gEL8ab0D8CORwM5w1Oa0edl/h9.', 'Raahul', 3, '2nd street , thiruvetriur', 'chennai', '1234567890', '2023-01-24 02:00:16'),
('saran12', '$5$rounds=535000$HNvNH/f4qxAj5gMA$XgzAGtYbszIMseS3BQXRixAQSMJGiSfFfMAmyEJA.31', 'saran', 4, '2nd street , kolathur', 'chennai', '1234567890', '2023-01-25 02:27:03'),
('venkat05', '$5$rounds=535000$DaYJH6poTDzm9wf5$g0ZaJySeAsALhBTd0yjf4O2QZA15ZpYV3YARmtDEBr/', 'Venkat', 4, '2nd street , Madhuravoyal', 'chennai', '9638527410', '2023-01-25 02:29:01'),
('vicky14', '$5$rounds=535000$VffETEFV9XSLFy0g$QeeT2/qS3IsQhXdG2ogON5h6OY/0R/eYQjdaF4u7XHB', 'Vicky', 1, '2nd street , thiruvetriur', 'chennai', '1234567890', '2023-01-23 13:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `username` varchar(200) NOT NULL,
  `plan` varchar(100) DEFAULT NULL,
  `trainor` varchar(200) DEFAULT NULL,
  `exercise` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`username`, `plan`, `trainor`, `exercise`) VALUES
('hari10', 'Montly plan', 'raahul10', ''),
('saran12', '1 Year Plan', 'raahul10', ''),
('venkat05', '2 Year Plan', 'Balaji14', '');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `name` varchar(100) NOT NULL,
  `exercise` varchar(200) NOT NULL,
  `reps` varchar(220) NOT NULL,
  `sets` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`name`, `exercise`, `reps`, `sets`) VALUES
('1 Year Plan', '', '', ''),
('2 Year Plan', '', '', ''),
('Montly plan', '', '', ''),
('X Bulking', '20 Push up\'s', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `username` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `daily_result` varchar(200) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `report` varchar(200) NOT NULL,
  `rate` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`username`, `date`, `daily_result`, `time`, `report`, `rate`) VALUES
('hari10', '2023-01-17', 'this is report', '2023-01-26 12:14:01', '', '2'),
('saran12', '2023-01-12', '2nd report', '2023-01-26 12:25:09', '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `receps`
--

CREATE TABLE `receps` (
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receps`
--

INSERT INTO `receps` (`username`) VALUES
('dhaunsh16');

-- --------------------------------------------------------

--
-- Table structure for table `trainors`
--

CREATE TABLE `trainors` (
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainors`
--

INSERT INTO `trainors` (`username`) VALUES
('Balaji14'),
('raahul10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equip`
--
ALTER TABLE `equip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`username`),
  ADD KEY `plan` (`plan`),
  ADD KEY `trainor` (`trainor`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`username`,`date`);

--
-- Indexes for table `receps`
--
ALTER TABLE `receps`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `trainors`
--
ALTER TABLE `trainors`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equip`
--
ALTER TABLE `equip`
  MODIFY `id` int(56) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`username`) REFERENCES `info` (`username`),
  ADD CONSTRAINT `members_ibfk_2` FOREIGN KEY (`plan`) REFERENCES `plans` (`name`),
  ADD CONSTRAINT `members_ibfk_3` FOREIGN KEY (`trainor`) REFERENCES `trainors` (`username`);

--
-- Constraints for table `progress`
--
ALTER TABLE `progress`
  ADD CONSTRAINT `progress_ibfk_1` FOREIGN KEY (`username`) REFERENCES `members` (`username`);

--
-- Constraints for table `receps`
--
ALTER TABLE `receps`
  ADD CONSTRAINT `receps_ibfk_1` FOREIGN KEY (`username`) REFERENCES `info` (`username`);

--
-- Constraints for table `trainors`
--
ALTER TABLE `trainors`
  ADD CONSTRAINT `trainors_ibfk_1` FOREIGN KEY (`username`) REFERENCES `info` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
