-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2018 at 11:19 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `streaming_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `movieTitle` varchar(255) NOT NULL,
  `moviePath` varchar(255) NOT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `movieTitle`, `moviePath`, `created`, `modified`) VALUES
(1, 'Is This Free?', '../Short Movies/Is This Free.mp4', '2018-12-20 08:53:52', '2018-12-20 08:53:52'),
(2, 'Lose Weight', '../Short Movies/Lose Weight.mp4', '2018-12-20 08:53:52', '2018-12-20 08:53:52'),
(3, 'The Black Hole', '../Short Movies/The Black Hole.mp4', '2018-12-20 08:53:52', '2018-12-20 08:53:52'),
(4, 'The Egyptian Pyramids', '../Short Movies/The Egyptian Pyramids.mp4', '2018-12-20 08:53:52', '2018-12-20 08:53:52'),
(5, 'The Gunfighter', '../Short Movies/The Gunfighter.mp4', '2018-12-20 08:53:52', '2018-12-20 08:53:52');

-- --------------------------------------------------------

--
-- Table structure for table `usersonsite`
--

CREATE TABLE `usersonsite` (
  `id` int(11) NOT NULL,
  `ipAdd` varchar(255) NOT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersonsite`
--

INSERT INTO `usersonsite` (`id`, `ipAdd`, `created`, `modified`) VALUES
(1, '::1', '2018-12-20 11:03:03', '2018-12-20 11:03:03'),
(2, '::1', '2018-12-20 11:05:15', '2018-12-20 11:05:15'),
(3, '172.16.113.120', '2018-12-20 11:07:47', '2018-12-20 11:07:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersonsite`
--
ALTER TABLE `usersonsite`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usersonsite`
--
ALTER TABLE `usersonsite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
