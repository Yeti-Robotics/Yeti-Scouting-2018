-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: mysql.yetirobotics.org
-- Generation Time: Jan 25, 2018 at 04:05 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yetirobotics_org_scouting`
--

-- --------------------------------------------------------

--
-- Table structure for table `pit_comments`
--

DROP TABLE IF EXISTS `pit_comments`;
CREATE TABLE `pit_comments` (
  `pit_scout_data_id` int(11) NOT NULL,
  `team_number` int(11) NOT NULL,
  `pit_comments` mediumtext NOT NULL,
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pit_pictures`
--

DROP TABLE IF EXISTS `pit_pictures`;
CREATE TABLE `pit_pictures` (
  `pit_scout_data_id` int(11) NOT NULL,
  `team_number` int(11) NOT NULL,
  `pic_num` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rankings`
--

DROP TABLE IF EXISTS `rankings`;
CREATE TABLE `rankings` (
  `team_number` int(11) NOT NULL,
  `event_key` tinytext,
  `team_name` text NOT NULL,
  `event_name` text NOT NULL,
  `qual_rank` smallint(6) NOT NULL,
  `wins` tinyint(4) NOT NULL,
  `losses` tinyint(4) NOT NULL,
  `ties` tinyint(4) NOT NULL,
  `next_match_number` tinyint(4) DEFAULT NULL,
  `next_match_time` datetime DEFAULT NULL,
  `lastmodified` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scouters`
--

DROP TABLE IF EXISTS `scouters`;
CREATE TABLE `scouters` (
  `id` int(6) NOT NULL,
  `name` tinytext NOT NULL,
  `username` text NOT NULL,
  `pswd` tinytext NOT NULL,
  `byteCoins` int(11) NOT NULL DEFAULT '200'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scout_data`
--

DROP TABLE IF EXISTS `scout_data`;
CREATE TABLE `scout_data` (
  `scout_data_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `match_number` int(11) NOT NULL,
  `team_number` int(11) NOT NULL,
  `robot_moved` tinyint(1) NOT NULL,
  `auto_gear` tinyint(1) NOT NULL,
  `autoHighGoal` tinyint(1) NOT NULL,
  `autoHighAccuracy` int(11) NOT NULL,
  `autoShootSpeed` int(11) NOT NULL,
  `autoLowGoal` tinyint(1) NOT NULL,
  `autoLowAccuracy` int(11) NOT NULL,
  `teleHighGoal` tinyint(1) NOT NULL,
  `teleHighAccuracy` int(11) NOT NULL,
  `teleShootSpeed` int(11) NOT NULL,
  `teleLowGoal` tinyint(1) NOT NULL,
  `teleLowAccuracy` int(11) NOT NULL,
  `teleGears` tinyint(1) NOT NULL,
  `load` int(11) NOT NULL,
  `climbed` tinyint(1) NOT NULL,
  `score` int(11) NOT NULL,
  `comments` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `team_info`
--

DROP TABLE IF EXISTS `team_info`;
CREATE TABLE `team_info` (
  `team_number` int(11) NOT NULL DEFAULT '0',
  `team_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wagers`
--

DROP TABLE IF EXISTS `wagers`;
CREATE TABLE `wagers` (
  `associatedId` int(11) NOT NULL,
  `wagerType` text NOT NULL,
  `wageredByteCoins` int(11) NOT NULL,
  `matchPredicted` int(11) NOT NULL,
  `alliancePredicted` text,
  `withenPoints` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pit_comments`
--
ALTER TABLE `pit_comments`
  ADD PRIMARY KEY (`pit_scout_data_id`);

--
-- Indexes for table `pit_pictures`
--
ALTER TABLE `pit_pictures`
  ADD PRIMARY KEY (`pit_scout_data_id`);

--
-- Indexes for table `scouters`
--
ALTER TABLE `scouters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scout_data`
--
ALTER TABLE `scout_data`
  ADD PRIMARY KEY (`scout_data_id`),
  ADD KEY `team_number` (`team_number`);

--
-- Indexes for table `team_info`
--
ALTER TABLE `team_info`
  ADD PRIMARY KEY (`team_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pit_comments`
--
ALTER TABLE `pit_comments`
  MODIFY `pit_scout_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pit_pictures`
--
ALTER TABLE `pit_pictures`
  MODIFY `pit_scout_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scouters`
--
ALTER TABLE `scouters`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `scout_data`
--
ALTER TABLE `scout_data`
  MODIFY `scout_data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
